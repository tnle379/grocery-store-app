class Store < ApplicationRecord
    has_many :departments
    has_many :reviews
    
    #calculate rating for each store
    def rating
        total = 0
        count = self.reviews.count
        self.reviews.all.each do |r|
            case r.note
            when "Decent"
                total += 4
            when "The best in town"
                total += 5
            when "Average!"
                total += 3
            when "Disappointed"
                total += 2
            else 
                total += 0
            end
        end
        return (total.to_f/count).round(2)
    end
    
    def get_employee_count
        total = 0
        self.departments.all.each do |d|
            total += d.employees.all.count
        end
        return total
    end
end
