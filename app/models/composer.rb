class Composer < ActiveRecord::Base
	validates :name_ja, presence: {message: "入力してください"}
	validates :fullname_ja, presence: {message: "入力してください"}
	validates :name_en, presence: {message: "入力してください"}
	validates :fullname_en, presence: {message: "入力してください"}
end
