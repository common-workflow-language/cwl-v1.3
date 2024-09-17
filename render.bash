#!/usr/bin/env bash
if [[ -z "$WORKSPACE" ]] ; then
    WORKSPACE=$PWD/temp/
fi
mkdir -p $WORKSPACE
repo=https://github.com/common-workflow-language/cwl-website \
bn=$WORKSPACE/$(basename $repo)
if [[ -d $bn ]] ; then
    (cd $bn && git fetch origin && git reset --hard origin/main)
else
    git clone $repo $bn && pushd $bn; git checkout main ; git show --no-patch ; popd
fi
CURDIR=$PWD
pushd $WORKSPACE/cwl-website ; ln -s $CURDIR v1.3 ; popd
cp cwlsite-v1.3-only-job.yaml $WORKSPACE/cwl-website/site/
mkdir -p render
cwltool $@ --no-container --cache $WORKSPACE/cache --outdir $PWD/render --relax-path-checks $WORKSPACE/cwl-website/site/cwlsite.cwl $WORKSPACE/cwl-website/site/cwlsite-v1.3-only-job.yaml
