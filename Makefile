venv : 
	python3 -m venv venv

setup : 
	python -m pip install --upgrade pip
	python -m pip install jupyter
	python -m pip install -r requirements.txt
	sh postBuild

run : 
	jupyter notebook

clean : 
	rm -rvf single_subject \
	        all_subjects \
	        demog_aseg.ttl \
	        single_query_results.txt \
	        all_query_results.txt \
	        all_hippocampus_results.txt

clobber : clean
	rm -rvf venv segstats_jsonld
