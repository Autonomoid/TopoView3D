function plotTile(tile)
    flippedTile = flipud(tile);
    surf(flippedTile)
    daspect([1,1,50])
    
    hold all
    
    h = max(max(flippedTile))
    [i, j] = find(flippedTile == max(flippedTile(:)))
    label = "max height = "
    label = strcat(label, num2str(h));
    label = strcat(label, "m");
    t = text(j,i,h+1000, label); 
    set (findobj (t, "-property", "fontsize"), "fontsize", 20)
    
    x = ones(1,1000+h).*j;
    y = ones(1,1000+h).*i;
    z = 1:1000+h;
    plot3(x,y,z)   
    
    set(gca,'Position',[0.1 0.1 0.9 0.9])
endfunction
