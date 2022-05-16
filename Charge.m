classdef Charge 
    %Object----Charge
    properties 
        Polar % polar
        X % x coordinates
        Y % y 
        Z % z 
        id_before % id befor moving to sphere
        id_after % id after moving from sphere
    end

    methods
        % constructor
        function obj = Charge(polar,x,y,z,id_before,id_after)
            if nargin > 0
                obj.Polar = polar;
                obj.X = x;
                obj.Y = y;
                obj.Z = z;
                obj.id_before = id_before;
                obj.id_after = id_after;
            end
        end
        % get polar
        function polar = getPolar(obj)
            polar = obj.Polar;
        end
        % get id of a charge before it's moving to sphere
        function id = getIdBefore(obj)
            id = obj.id_before;
        end
        % get id of a charge after it's moving from sphere 
        function id = getIdAfter(obj)
            id = obj.id_after;
        end
        % get X         
        function x = getX(obj)
            x = obj.X;
        end
        % get Y               
        function y = getY(obj)
            y = obj.Y;
        end
        % get Z                        
        function z = getZ(obj)
            z = obj.Z;
        end
        % set X
        function obj = setX(obj,x)
            obj.X = x;
        end
        % set id_before
        function obj = setIdBefor(obj,id)
            obj.id_before = id;
        end
        % set id_after
        function obj = setIdAfter(obj,id)
            obj.id_after = id;
        end
        % set Y
        function obj = setY(obj,y)
            obj.Y = y;
        end
        % set Z
        function obj = setZ(obj,z)
            obj.Z = z;
        end
       
    end
end
