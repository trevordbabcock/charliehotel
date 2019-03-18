Feature: SimpleCSV sorting
  Scenario: User wants to sort a CSV file
    Given Input CSV file has string alphanumeric characters
    When User uses SimpleCSV to sort input CSV
    Then Output CSV should be sorted alphanumerically

    Given Input CSV file is empty
    When User uses SimpleCSV to sort input CSV
    Then SimpleCSV sort should error

    Given Input CSV file has multiple lines
    When User uses SimpleCSV to sort input CSV
    Then SimpleCSV should sort first line only
    And  Exclude all other lines from output

    Given Input CSV file has values with double-quotes as first and last characters
    When User uses SimpleCSV to sort input CSV
    Then Output CSV should be sorted alphanumerically
    And  Quoted strings should be sorted to the front (show up before alphanumeric characters)

    Given Input CSV file has double-quoted strings containing escaped double-quotes
    When User uses SimpleCSV to sort input CSV
    Then SimpleCSV should sort normally

    Given Input CSV file has double-quoted strings containing commas
    When User uses SimpleCSV to sort input CSV
    Then SimpleCSV should sort normally
    And  Should not split quoted values on commas

    Given Input CSV file has double-quoted strings containing escaped double-quotes (using backslashes)
    When User uses SimpleCSV to sort input CSV
    Then SimpleCSV sort should error

    Given Input CSV file has single-quotes as first and last characters
    When User uses SimpleCSV to sort input CSV
    Then SimpleCSV sort should sort normally

