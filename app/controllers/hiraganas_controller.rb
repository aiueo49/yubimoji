class HiraganasController < ApplicationController
  skip_before_action :require_login, only: %i[trial]
  layout 'alternative', only: [:new, :create, :show, :study, :trial]

  def index
    @hiraganas = current_user.hiraganas.page(params[:page])
  end

  def new
    @hiragana = Hiragana.new
  end

  def create
    @hiragana = current_user.hiraganas.build(hiragana_params)
    if @hiragana.save
      redirect_to new_hiragana_path, success: 'ひらがなを登録しました'
    else
      flash.now[:danger] = '既に登録されているひらがなです'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @hiragana = Hiragana.find(params[:id])
    characters = @hiragana.character.chars
    @sign_languages = characters.map { |char| SignLanguage.find_by(character: char) }
  end

  def destroy
    @hiragana = current_user.hiraganas.find(params[:id])
    @hiragana.destroy!
    redirect_to hiraganas_path, notice: 'ひらがなを削除しました'
  end

  def study
    @hiragana = Hiragana.find(params[:id])
    characters = @hiragana.character.chars
    @sign_languages = characters.map { |char| SignLanguage.find_by(character: char) }
  end

  # 学習ページで「次の問題」ボタンを押したときに呼び出されるアクション
  def next
    # URLパラメータから現在の問題のIDを取得
    current_id = params[:id].to_i
    # 現在の問題のIDよりも小さいIDを持つ問題の中で最小のIDを取得
    @hiragana = Hiragana.where("id < ?", current_id).order(created_at: :desc).first

    if @hiragana.nil?
      redirect_to mypage_path, notice: "これ以上問題がありません"
    else
      redirect_to study_hiragana_path(@hiragana)
    end
  end

  def trial
    characters = params[:character]&.chars || []
    @sign_languages = characters.map { |char| SignLanguage.find_by(character: char) }
  end


  private

  def hiragana_params
    params.require(:hiragana).permit(:character, :sign_language_id)
  end
end
