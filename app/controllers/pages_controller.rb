class PagesController < ApplicationController
  def home
    
  end

  def about
  end
  
  
  def show
      @title="CREATING"
      @query=(params[:password])

      if @query.to_i == 1
        connection=ActiveRecord::Base.connection();
                   @results=connection.execute("SELECT * FROM firsts")
      end
      if @query.to_i == 2
        connection=ActiveRecord::Base.connection();
                   @results=connection.execute("SELECT * FROM seconds")
      end
      if @query.to_i == 3
        connection=ActiveRecord::Base.connection();
                   @results=connection.execute("SELECT * FROM thirds")
      end
  end
  

end
