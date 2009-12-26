module Rankitize  
  def rank_by(*columns)  
      # Loop through the arguments.
      columns.each do |column|
        # Define the method to get the ranking.
        # This is a workaround meant for mysql
        define_method "#{column}_ranking" do
          connection.select_value("SELECT COUNT(*) + 1 AS ranking FROM #{self.class.table_name} WHERE #{column} > (SELECT #{column} FROM #{self.class.table_name} WHERE id = #{self.id})").to_i
        end
      end
  end  
end