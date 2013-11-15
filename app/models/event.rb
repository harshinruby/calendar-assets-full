class Event < ActiveRecord::Base
scope :between, lambda {|start_time, end_time|  
  {:conditions => ["? < starts_at < ?", Event.format_date(start_time), Event.format_date(end_time)] }  
  }  
  def self.format_date(date_time)  
   Time.at(date_time.to_i).to_formatted_s(:db)  
  end 

  def as_json(options = {})  
   {  
    :id => self.id,  
    :title => self.title,  
    :description => self.description || "",  
    :start => starts.rfc822,  
    :end => ends.rfc822,  
    :allDay => self.allDay,  
    :recurring => false,  
    :url => Rails.application.routes.url_helpers.root_path(id),  
   }  
  end  
end
