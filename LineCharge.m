classdef LineCharge
    %
    properties
        Line_Head %charge 
        Line_Tail %charge
        Amount_Of_Charge % 2
        Line_Polar
    end

    methods
        function obj = LineCharge(Charge1,Charge2,amount_of_charge,polar)
            if nargin > 0
                obj.Line_Head = Charge1;
                obj.Line_Tail = Charge2;
                obj.Amount_Of_Charge = amount_of_charge;
                obj.Line_Polar = polar;
            end
        end
        
        function head_x = getHead_X(obj)
            head_x = obj.Line_Head.getX();
        end
        
        function head_y = getHead_Y(obj)
            head_y = obj.Line_Head.getY();
        end
        
        function head_z = getHead_Z(obj)
            head_z = obj.Line_Head.getZ();
        end

        function tail_x = getTail_X(obj)
            tail_x = obj.Line_Tail.getX();
        end
        
        function tail_y = getTail_Y(obj)
            tail_y = obj.Line_Tail.getY();
        end
        
        function tail_z = getTail_Z(obj)
            tail_z = obj.Line_Tail.getZ();
        end

        function obj = setHead(obj,Charge1)
            obj.Line_Head = Charge1;
        end

        function obj = setTail(obj,Charge1)
            obj.Line_Tail = Charge1;
        end

        function amount_of_charge = getAmountOfCharge(obj)
            amount_of_charge = obj.Amount_Of_Charge;
        end

        function obj = setAmounOfCharge(obj,amount)
            obj.Amount_Of_Charge = amount;
        end

        function line_polar = getLinePolar(obj)
            line_polar = obj.Line_Polar;
        end

        function obj = setLinePolar(obj,polar)
            obj.Line_Polar = polar;
        end

        function length = getLength(lineCharge)
            length = sqrt(power(getHead_X(lineCharge) - getTail_X(lineCharge),2) + power(getHead_Y(lineCharge) ...
                - getTail_Y(lineCharge),2) + power(getHead_Z(lineCharge) - getTail_Z(lineCharge),2));
        end
    end
end