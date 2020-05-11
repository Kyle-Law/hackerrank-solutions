# Complete the bonAppetit function below.
def bonAppetit(bill, k, b)
    bill.delete_at(k)
    diff = b - (bill.sum)/2
    print diff == 0 ? 'Bon Appetit' : diff
end