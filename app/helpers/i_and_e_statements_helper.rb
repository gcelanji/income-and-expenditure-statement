module IAndEStatementsHelper
  def disposable_income(statement)
    disposable_income = 0
    statement.incomes.each do |income|
      disposable_income += income.amount.to_f
    end
    statement.expenditures.each do |expenditure|
      disposable_income -= expenditure.amount.to_f
    end
    disposable_income
  end

  def rating(statement)
    total_income = 0
    total_expenditures = 0

    statement.incomes.each do |income|
      total_income += income.amount.to_f
    end
    statement.expenditures.each do |expenditure|
      total_expenditures += expenditure.amount.to_f
    end

    ratio = total_expenditures / total_income
    percentage = ratio * 100

    if percentage < 10
      "A"
    elsif percentage >= 10 && percentage < 30
      "B"
    elsif percentage >=30 && percentage < 50
      "C"
    else
      "D"
    end
  end
end
