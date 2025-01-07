$pdf_mode = 4;
$bibtex_use = 1.5;
$synctex = 1;
$lualatex = 'lualatex';
$postscript_mode = $dvi_mode = 0;
$force_mode = 1;
set_tex_cmds('--file-line-error --interaction=nonstopmode --shell-escape %O %S');

STDOUT->autoflush;
STDERR->autoflush;

add_cus_dep('pytxcode', 'tex', 0, 'pythontex');
sub pythontex { return system("pythontex --interpreter 'python:python3' \"$_[0]\""); }

#$pythontex = 'pythontex %O %S';
#$extra_rule_spec{'pythontex'}  = [ 'internal', '', 'mypythontex', "%Y%R.pytxcode",  "%Ypythontex-files-%R/%R.pytxmcr",    "%R", 1 ];
#
#sub mypythontex {
#   my $result_dir = $aux_dir1."pythontex-files-$$Pbase";
#   my $ret = Run_subst( $pythontex, 2 );
#   rdb_add_generated( glob "$result_dir/*" );
#   open( my $fh, "<", $$Pdest );
#   if ($fh) {
#      while (<$fh>) {
#         if ( /^%PythonTeX dependency:\s+'([^']+)';/ ) {
#         print "Found pythontex dependency '$1'\n";
#             rdb_ensure_file( $rule, $aux_dir1.$1 );
#     }
#      }
#      undef $fh;
#   }
#   else {
#       warn "mypythontex: I could not read '$$Pdest'\n",
#            "  to check dependencies\n";
#   }
#   return $ret;
#}

push @generated_exts, 'pytxcode';
push @generated_exts, 'pythontex-files-%R/*';
push @generated_exts, 'pythontex-files-%R';
push @generated_exts, 'synctex.gz';
$cleanup_includes_cusdep_generated = 1;

$emulate_aux = 1;
$out_dir = '.';
$aux_dir = 'aux';
