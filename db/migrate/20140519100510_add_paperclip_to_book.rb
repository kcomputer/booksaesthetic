class AddPaperclipToBook < ActiveRecord::Migration
  def self.up
    add_attachment :books, :epubf
  end

  def self.down
    remove_attachment :books, :epubf
  end
end
