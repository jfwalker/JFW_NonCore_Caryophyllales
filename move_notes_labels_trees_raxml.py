import sys
import tree_reader

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print "python "+sys.argv[0]+" infile.tre"
        sys.exit(0)
    inf = open(sys.argv[1],"r")
    oneline = inf.readline().strip()
    tree = tree_reader.read_tree_string(oneline)
    for i in tree.iternodes():
        if len(i.children) > 0:
            i.label = i.note
    inf.close()
    print tree.get_newick_repr(True)+";"
