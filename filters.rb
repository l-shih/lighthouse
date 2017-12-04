# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  x = @candidates.select { |candidate| candidate[:id] == id }
  x[0]
end

def experienced(candidate)
  candidate[:years_of_experience] > 1
end


# Are experienced
# Have 100 or more Github points
# Know at least Ruby or Python
# Applied in the last 15 days
# Are over the age of 17 (18+)

def github_100(candidate)
  candidate[:github_points] >= 100
end

def languages(candidate)
  candidate[:languages].include?('Ruby' || 'Python')
end

def date_applied(candidate)
  candidate[:date_applied] > 16.days.ago.to_date
end

def age(candidate)
  candidate[:age] > 17
end

def qualified_candidates(candidates)
  candidates.select do |candidate|
    experienced(candidate) &&
    github_100(candidate) &&
    date_applied(candidate) &&
    age(candidate) &&
    languages(candidate)
  end
end

def ordered_by_qualifications(candidates)
  candidates.sort_by{ |a| [-a[:years_of_experience], -a[:github_points]] }
end

# More methods will go below