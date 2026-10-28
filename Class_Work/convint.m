function[y,ty]=convint(x,tx,h,th)
    dt=tx(2)-tx(1);
    y=conv(x,h)*dt;
    ty=(tx(1)+th(1))+[0:(length(y)-1)]*dt;
end