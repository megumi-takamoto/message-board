class Message < ActiveRecord::Base
    # 募集タイトルは必須入力かつ20文字以内
    validates :title , length: { maximum: 50 } , presence: true    
    #　仕事の内容は必須入力かつ2文字以上30文字以下
    validates :body , length: { minimum: 2, maximum: 100 } , presence: true
    #　対象年齢は0以上の数字だけ入力できる
    validates :age , numericality: { only_integer: true, greater_than_or_equal_to: 0} , presence: true
    #　勤務地は必須入力かつ20文字以内
    validates :station , length: { maximum: 30 } , presence: true   
    # 投稿者は必須入力かつ20文字以内
    validates :name , length: { maximum: 30 } , presence: true       
    # 連絡先メールは必須入力かつ20文字以内
    validates :mail , length: { maximum: 40 } , presence: true    
end
