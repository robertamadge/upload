class Item < ApplicationRecord

    def self.import(file)
        CSV.foreach(file.path, headers: true,  col_sep: "\t").map do |row|
            Item.create! row.to_hash
        end
    end
end
