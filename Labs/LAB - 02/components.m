function [xe, xo] = components(t, x)
    x_reverse = fliplr(x);

    xe = (x + x_reverse)/2;
    xo = (x - x_reverse)/2;

    figure;

    subplot(3,1,1)
    plot(t,x,'LineWidth',1.5)
    grid on
    title('Original Signal')
    xlabel('Time (s)')
    ylabel('Amplitude')

    subplot(3,1,2)
    plot(t,xe,'b','LineWidth',1.5)
    grid on
    title('Even Component')
    xlabel('Time (s)')
    ylabel('Amplitude')

    subplot(3,1,3)
    plot(t,xo,'r','LineWidth',1.5)
    grid on
    title('Odd Component')
    xlabel('Time (s)')
    ylabel('Amplitude')
end