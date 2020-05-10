sim:
	@sbt test

emit:
	@sbt testOnly *EmiterSpec

view:
	@gtkwave out/vlog_vcd/GCD.vcd assets/dbg.gtkw &
	
clean:
	@find . -name "target" | xargs rm -rf {} \;
	@rm -rf out/

vs:
	@rm -rf .bloop .metals project/.bloop

rm:clean 
	@echo
