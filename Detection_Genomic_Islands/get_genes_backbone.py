import sys
genes = sys.argv[1]
all_gene = sys.argv[2]

###MLST
dict_mlst = {}
dict_group = {}
fr_mlst = open("tableS1_new.txt","r").read().splitlines()
for line in fr_mlst[1:]:
	name = line.split()[0]
	mlst = line.split()[2]
	group = line.split()[1]
	dict_mlst[name] = mlst
	dict_group[name] = group
					
fr = open("499_ARG_strAB_IS_minid90_mincov80.txt","r").read().splitlines()
dict_arg = {}
dict_line = {}
dict_all_gene = {}
for line in fr[1:]:		
	strain = line.split()[0]
	contig = line.split()[1]
	l2 = line.split()[2]
	if "_" in l2:
		arg = l2.split("_")[0]
	else:
		arg = l2
	name = strain + "__" + contig
	dict_arg.setdefault(name,[]).append(arg)
	dict_line.setdefault(name,[]).append(line)
	dict_all_gene.setdefault(strain,[]).append(arg)

gene_list = genes.split(",")
all_gene_list = all_gene.split(",")
fw_bar_name = genes + "_bar_input.txt"
fw_bar = open(fw_bar_name,"w")
fw_name = genes + "__backbone.txt"
fw = open(fw_name,"w")
for name in dict_arg.keys():
	arg_list = dict_arg[name]
	all_arg_list = dict_all_gene[name.split("__")[0]]
	inter = list(set(arg_list) & set(gene_list))
	all_inter = list(set(all_arg_list) & set(all_gene_list))
	if len(all_inter) == len(all_gene_list):
		if len(inter) == len(gene_list):
			for name_line in dict_line[name]:
				fw.write(name_line + "\n")
			strain = name.split("__")[0]
			fw_bar.write(strain + "\t" + dict_mlst[strain] + "\t" + dict_group[strain] + "\t" + genes + "\t" + "1" + "\t" + "1" + "\t" + "-" + "\t" + "1" + "\n")
