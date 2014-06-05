module ArticlesHelper
  def article_subject(article)
    article.subject.present? ? article.subject.name : "n/a"
  end
end
