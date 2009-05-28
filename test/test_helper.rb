$:.unshift(File.dirname(__FILE__) + '/../lib')

require 'test/unit'
# rails environment - load my plugin baby!
require File.expand_path(File.join(File.dirname(__FILE__), '../../../../config/environment.rb'))
require 'rubygems'
require 'fileutils'

require 'activerecord'
DB = 'test.sqlite3.db'

#FileUtils.rm DB


ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :dbfile =>  DB
)

class CreateDatabase < ActiveRecord::Migration
  def self.up
    create_table :todos, :force => true do |t|
      t.string :name
      t.boolean :complete
      t.text :description
      t.integer :priority
    end
  end
end

class Todo < ActiveRecord::Base
  validates_presence_of :name
end

CreateDatabase.up unless File.exist?(DB)
  
  

