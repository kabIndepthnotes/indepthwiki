:
# mv array___20240710_1404_29.wiki                             array___20240710_1404_29.pd
# mv basic_data_types___20240617_1419_52.wiki                  basic_data_types___20240617_1419_52.pd
# mv compiling_and_linking___20240522_0957_35.wiki             compiling_and_linking___20240522_0957_35.pd
# mv continuous_integration_testing___20241014_1408_39.wiki    continuous_integration_testing___20241014_1408_39.pd
# mv c_resources___20240521_1540_24.wiki                       c_resources___20240521_1540_24.pd
# mv directive___20250220_1319_14.wiki                         directive___20250220_1319_14.pd
# mv escape_sequences___20240531_0936_59.wiki                  escape_sequences___20240531_0936_59.pd
# mv exit___20241003_1211_51.wiki                              exit___20241003_1211_51.pd
# mv function_c___20240724_1123_52.wiki                        function_c___20240724_1123_52.pd
# mv getchar___20240731_0941_07.wiki                           getchar___20240731_0941_07.pd
# mv hash_table___20240604_1719_08.wiki                        hash_table___20240604_1719_08.pd
# mv jump_statements___20240610_1010_43.wiki                   jump_statements___20240610_1010_43.pd
# mv machine_code___20240830_1614_59.wiki                      machine_code___20240830_1614_59.pd
# mv mutex___20241008_1320_48.wiki                             mutex___20241008_1320_48.pd
# mv operator___20240603_1153_38.wiki                          operator___20240603_1153_38.pd
# mv pointer___20240830_1618_20.wiki                           pointer___20240830_1618_20.pd
# mv printf___20240531_0922_41.wiki                            printf___20240531_0922_41.pd
# mv quick_sort___20241003_1213_31.wiki                        quick_sort___20241003_1213_31.pd
# mv scanf___20240531_0915_44.wiki                             scanf___20240531_0915_44.pd
# mv side_effects___20240603_1300_44.wiki                      side_effects___20240603_1300_44.pd
# mv strdup___20240604_1729_32.wiki                            strdup___20240604_1729_32.pd
# mv string_literals___20240923_1200_28.wiki                   string_literals___20240923_1200_28.pd
# mv types_of_code_behaviour___20240603_1215_51.wiki           types_of_code_behaviour___20240603_1215_51.pd

sed -i 's/^==/## /' *.wiki
sed -i 's/^=/# /' *.wiki
sed -i 's/ =\+$//' *.wiki
sed -i 's/^{{{/~~~{.c .numberLines}/' *.wiki
sed -i 's/^}}}/~~~/' *.wiki
sed -i 's/:__art:/[art](art___20250312_1407_25.pd)/g' *.wiki
sed -i 's/:__c:/[c](c___20250304_1142_20.pd)/g' *.wiki
sed -i 's/:__c99:/[c99](c99___20250312_1237_53.pd)/g' *.wiki
sed -i 's/:__c89:/[c89](c89___20250312_1239_51.pd)/g' *.wiki
sed -i 's/:__math:/[math](math___20250311_0922_50.pd)/g' *.wiki
sed -i 's/:__music/[music](music___20250312_1742_01.pd)/g' *.wiki
sed -i 's/:__pixel_art/[pixel_art](pixel_art___20250319_1215_29.pd)/g' *.wiki
sed -i 's/__flashcard/[flashcard](flashcard___20250324_0938_53.pd)/g' *.wiki
rename.ul '.wiki' '.pd' *.wiki
# rename.ul 's/' '.pd' *.wiki
# rename 's/[0-9][0-9].pd/_&/' *.pd # doesn't work, adds & to the end
