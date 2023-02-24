function l = createTile(datadir, square, xmin, xmax, ymin, ymax)
    prefix = strcat(datadir, square);
    l = [];
    for x = xmin:xmax
        b = [];
        for y = ymin:ymax
            file = prefix;
            file = strcat(file, num2str(x));
            file = strcat(file, num2str(y));
            file = strcat(file, ".dat");
            t = dlmread(file);
            b = vertcat(t, b);
        end
        r = b;
        l = horzcat(l, r);
    end
endfunction
