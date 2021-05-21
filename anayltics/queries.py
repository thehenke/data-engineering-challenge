def one():
    return '''
        SELECT COUNT(SalesOrderID) as count
            FROM (
                SELECT SalesOrderID 
                FROM salesorderheader 
                LIMIT 3, 100000
            ) as query;
    '''

def two():
    return '''SELECT SOP.ProductID, P.Name as ProductName, SUM(SOD.OrderQty) as Soma
                FROM specialofferproduct SOP
                INNER JOIN Product P ON P.ProductID = SOP.ProductID
                INNER JOIN salesorderdetail SOD ON SOD.ProductID = SOP.ProductID
                GROUP BY P.DaysToManufacture;'''

def three():
    return '''SELECT P.PersonID, C.CustomerID, SUM(SOH.SalesOrderID)
                FROM person P
                INNER JOIN customer C ON C.PersonID = P.PersonID
                INNER JOIN salesorderheader SOH ON SOH.CustomerID = C.CustomerID
                GROUP BY C.CustomerID;
                '''

def four():
    return '''SELECT P.ProductID, SUM(SOD.OrderQty) AS soma
                FROM Product P
                INNER JOIN salesorderdetail SOD ON SOD.ProductID = P.ProductID
                INNER JOIN salesorderheader SOH ON SOD.SalesOrderID = SOH.SalesOrderID
                GROUP BY P.ProductID, SOH.OrderDate;'''

def five():
    return '''SELECT SOH.SalesOrderID, SOH.OrderDate, SOH.TotalDue
                FROM salesorderheader SOH
                WHERE SOH.OrderDate BETWEEN DATE('2011-09-01') AND DATE('2011-09-30')
                AND SOH.TotalDue > 1000;
            '''