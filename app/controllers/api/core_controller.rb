class Api::CoreController < ApplicationController
  before_filter :get_languages
  respond_to :json

  def vocabulary
    logger.info { @lang_from }
    logger.info { @lang_to }
    @word = Word.order("RANDOM()").first
    @wrongs = Word.where("english <> ?", @word.english).order("RANDOM()").first(3)
    respond_with({
      word: @word[@lang_from],
      right: @word[@lang_to],
      wrongs: @wrongs.collect{|w| w[@lang_to]}
    })
  end

  private

  def get_languages
    @current_langs = ['english','spanish']
    @lang_from = @current_langs[0]
    @lang_to = @current_langs[1]

    @lang_from = params[:from] if @current_langs.include? params[:from]
    @lang_to = params[:to] if @current_langs.include? params[:to]

    # reverting languages
    @lang_from,@lang_to = @lang_to,@lang_from if params[:revert]
  end
end
