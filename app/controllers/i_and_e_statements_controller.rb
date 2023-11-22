class IAndEStatementsController < ApplicationController
  before_action :set_statement, only: %i[show]

  def index
    @statements = current_user.i_and_e_statements
  end

  def show
  end

  def new
    @statement = current_user.i_and_e_statements.new
    setup_incomes_and_expenditures
  end

  def create
    @statement = current_user.i_and_e_statements.new(statement_params)
    if @statement.save
      redirect_to i_and_e_statements_path, notice: "I&E Statement was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def setup_incomes_and_expenditures
    @statement.incomes.empty? && 2.times { @statement.incomes.build } if @statement.new_record?
    @statement.expenditures.empty? && 5.times { @statement.expenditures.build } if @statement.new_record?
  end

  def statement_params
    params.require("i_and_e_statement").permit(
      :description,
      incomes_attributes: %i[id name amount _destroy],
      expenditures_attributes: %i[id name amount _destroy]
    )
  end

  def set_statement
    @statement = current_user.i_and_e_statements.find(params[:id])
  end
end
