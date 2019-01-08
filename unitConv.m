%this program takes a number and its units as inputs and converts the
%number to centimeters

function unitConv()
    x=input('Enter the number to be converted: ');
    units=input('Enter unit - inch(in), feet(ft), meter(m), centimeter(cm): ','s');
    switch units
        case {'inch','in'}
            y=x*2.54;
        case {'feet','ft'}
            y=x*2.54*12;
        case {'meter','m'}
            y=x*100;
        case {'milimeter','mm'}
            y=x/10;
        case {'centimeter','cm'}
            y=x;
        otherwise
                disp(['Unknown units: ' units])
                y=nan;
    end
    fprintf('%d %s = %f cm\n',x,units,y)
    