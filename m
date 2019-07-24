Return-Path: <open-iscsi+bncBAABB47J4LUQKGQEBNZUTJI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B615E739CA
	for <lists+open-iscsi@lfdr.de>; Wed, 24 Jul 2019 21:43:48 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id n19sf26146234ota.14
        for <lists+open-iscsi@lfdr.de>; Wed, 24 Jul 2019 12:43:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563997427; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wn9tc4zPrGMFpRQNfpGJdh2UMkvJlACb+OhRV/PW8Vb3XylRrdjUeSyTySC40Cw+1n
         FnrUZxrMO4R81gVWAAOotI2TwHrkgFIwQeMLO/cw4ytekjpeNtDQG5ob3jLSrjCeoHrt
         6K1yE44ugHf7uTXZzH+jOEb217D/lEY+/kmMolPm88cE6+1XR/n0PtNi0IJ5R39EDOQW
         IjIIZ5009aOsGNiz+bEmHhoLX0nTPLYfqm7VSBIQGNYv2fR1V4ylRiIPvrQYciIWxwgz
         RagBQPgomTxPQmdy3hl3FEZwLwrJofpu/9buw1C1M+U9l8elT5v3mC+TeqRCYkMNoanp
         5dyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=zTufZkO9xLH7DiaB0VEwiBGoiyD1ifq4Z3EBcmrAZE8=;
        b=gfpGxxxtFS5ULMQwZH8PHa2uTpXdYhuz9UpjIpcjjUCQ7ilxwVNPJfmxVvQ7SGQM+I
         kyQXwJm+wKOtQlD6zN9dbnLRQd5s9BZQrJydgxM43wv2DU+TygjooLmz7scuyRWvvrom
         6lIlR06bUpN5xvXvS6rmqgZQt+QyBMQ3Bqp/GWnzmZwC+xlUaNCNya1hahMST7lOHBy1
         2KtJz8l9Gdc4pxHlv7mh+YLX0TkcyIh/jQbPmNtI/ly+oOwG+pJ0+zJUuZOjVyITlIte
         1MRctc7L7uS3mbHY2T+JWolYOK/amOhrD0M4Ga9oTvIl/t6Xzpf+w+zLI4X8Bd4efTe9
         hlHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zTufZkO9xLH7DiaB0VEwiBGoiyD1ifq4Z3EBcmrAZE8=;
        b=p6Hg9m0HzusojeR8COgBF+t5gE73Ptg9Af3uFxEr+WuUvzgZe22Um+eR8uxItl2i1u
         4g8wmAeXt+jMXcltkeQ/JB4s2zUYWc5mivxBVZX8nxrb7n46T+3IuAX1OB1IrdLHl/Od
         QBSLIoZ7rGrEf5RlsKFIY+qi1qkqydZ9VgLknnXs4UqSbCsEYIwyR2Uc+2PkP1j0vHyY
         ifBhicH8MOupTriPv/Omf+QafJxIhQ20GKvqOgBj9PLPLsspeNWzQBvGbUzIdk50jFZN
         TdfUvtAp65Eq0Yr9Wm4y/fAMdVNZpCXLXV6oe5u+/UwX1Tt9cs6+b0AOogzc4XYCx7rX
         ucqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zTufZkO9xLH7DiaB0VEwiBGoiyD1ifq4Z3EBcmrAZE8=;
        b=PPHU7lQstsZa4/FAizDNk4x9cNmqYv9uCxtGESu0h8tF/Sl7/a2jysQm+UkEnFE2AU
         z9FlnCFgJQh0PhzY5KCWzUrCkVnj155MrilRX43q1rQ7C5SQxv3w7h7TMoCedr3P7Wlf
         GNnQrruP4u8GHqUgBoO7tFPVzCc2u4owqq5Tok4xM6glrzb1Ocsr2xxlSOxdz0VDQhwL
         jOWJQhmfibAf9N4GvF+QzQCWK/uwigggmYPzvICzS/UszAq3XLCb8IQswQc2qD6kkN/z
         99TlKzjM9mImbkShk2eqLubkOJe4WhEo8jfejNqvdfIg9/B60iGBn54S2Cd83NgRvz2z
         B8Hg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXcg/iNOu5g89CFLA9uAEHQSgOB/Mbamzz6i+aht9lpzG8yViww
	s2wXGD5uDwePtGNmg1vYlDk=
X-Google-Smtp-Source: APXvYqwYt4d9nyw7kOjDsOiJEEAnpjpuzXRFrXu5OVhnNi0O/cGZxPvlTBoEhkJA/IahCvOme13jHw==
X-Received: by 2002:a9d:4c81:: with SMTP id m1mr62173819otf.338.1563997427435;
        Wed, 24 Jul 2019 12:43:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:6c1a:: with SMTP id f26ls9093438otq.4.gmail; Wed, 24 Jul
 2019 12:43:47 -0700 (PDT)
X-Received: by 2002:a9d:66ce:: with SMTP id t14mr41518814otm.265.1563997427292;
        Wed, 24 Jul 2019 12:43:47 -0700 (PDT)
Received: by 2002:aca:560a:0:0:0:0:0 with SMTP id k10msoib;
        Wed, 24 Jul 2019 11:00:34 -0700 (PDT)
X-Received: by 2002:a05:6830:11c9:: with SMTP id v9mr63111879otq.19.1563991233857;
        Wed, 24 Jul 2019 11:00:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563991233; cv=none;
        d=google.com; s=arc-20160816;
        b=UdgYqGf90L9x2ISxxWwe8NmdaneKNvT3MbQeeKS16I3mZCATknpBCixVLMoynTIXFR
         HVK0yprDSIkQ0AvTl67gn8ehnIPPjj6hIBasecuiNVpR6MGvsH5Itb1Wu3XLQW00s9sq
         qfmvKojp7cqrCg7m4C2/Deo86jl/5EzozZu4Y+lZZJJs8V9WcWjViz4qrosaRxA7JIJw
         Iy+hWqQWIUREcGNe/rtQK5vIcGjiz0VwN9o45kTcio2y5mZd4Agu1zvW/B9vZLVuiq+k
         9wVZsaP/a0o/RKK4Dk9a3pbt/BK6zN19QvDt5hxTFxd4/StkddRyTMMoNXVzIZXQinzA
         Yadg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=Pkl0XV+mbdoFk/GJZ17I/vSvSbq4KsCT3SuySDNluSM=;
        b=SpNJpfPwG2HskVBFw9z88/u+Z+JsjeFB3o7nb1o+d5kR5I7F/EG4lNIO4T5X6EzkfQ
         hv7wRIgAKr1W9yo2VNpudRZ+l1JLGFOaIl+lS+0wtG16Abv7MkRiNefMLYD9F7HQH1+N
         13+W6EU2M1oYah/hygPjTopcX17tPcGZKFt8knbeIe+iKK0GsdH/Evf3LMU51yhozyXj
         4B8uRS9OJIwK+O5A6MBKmjkLX1lMHekcqyQ5uvPc3EOz/3wK7kolpHP9txGtzMnAYljE
         QP0KgJEiRPwRPAVSCh/AfKTIFJJXXrz6uFs6Seny1NKt9Vhv8ql1nzixwFSrfo+o/pND
         XyoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id y188si2330308oig.3.2019.07.24.11.00.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 11:00:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id 9D3E91252B2C5B6ABF47;
	Thu, 25 Jul 2019 02:00:31 +0800 (CST)
Received: from huawei.com (10.184.191.68) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Thu, 25 Jul 2019
 02:00:25 +0800
From: Biaoxiang Ye <yebiaoxiang@huawei.com>
To: <tj@kernel.org>, <lduncan@suse.com>
CC: <jiangshanlai@gmail.com>, <cleech@redhat.com>,
	<open-iscsi@googlegroups.com>, <jiangyiwen@huawei.com>,
	<xiexiangyou@huawei.com>
Subject: [RFC PATCH 0/2] implement NUMA affinity for order workqueue to improve the performance of iscsi
Date: Wed, 24 Jul 2019 17:59:38 +0000
Message-ID: <1563991180-11532-1-git-send-email-yebiaoxiang@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.184.191.68]
X-CFilter-Loop: Reflected
X-Original-Sender: yebiaoxiang@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

From: Biaoxiang Ye <biaoxiangye@huawei.com>

Hi:
We found on NUMA machines the kworker of iscsi created always jump around
across node boundaries. If it work on the different node even
different cpu package with the softirq of network interface, memcpy
within iscsi_tcp_segment_recv will be slow down, and iscsi got an
terrible performance. Iscsi use create_singlethread_dynamic_workqueue
to create an order workqueue, unfortunately the order workqueue only
have single pwq, all of works are queued the same workerpool. This is
not optimal on NUMA machines, will cause workers jump around across node.

The first patch add a new wq flags __WQ_DYNAMIC, and a new macros
create_singlethread_dynamic_workqueue, this new kind of single thread 
workqueue creates a separate pwq covering the intersecting CPUS for 
each NUMA node which has online CPUS in @attrs->cpumask instead of 
mapping all entries of numa_pwq_tbl[] to the same pwq. After this, 
we can specify the @cpu of queue_work_on, so the work can be executed 
on the same NUMA node of the specified @cpu.

The second patch, we trace the cpu of softirq, and tell queue_work_on
to execute iscsi_xmitworker on the same NUMA node.

Any advice is welcome.

Thanks in advance!
------------------------------------------------------------------
The performance data as below:
[cpu info]:
Architecture:          aarch64
Byte Order:            Little Endian
CPU(s):                128
On-line CPU(s) list:   0-127
Thread(s) per core:    1
Core(s) per socket:    64
Socket(s):             2
NUMA node(s):          4
Model:                 0
CPU max MHz:           2600.0000
CPU min MHz:           200.0000
BogoMIPS:              200.00
L1d cache:             64K
L1i cache:             64K
L2 cache:              512K
L3 cache:              32768K
NUMA node0 CPU(s):     0-31
NUMA node1 CPU(s):     32-63
NUMA node2 CPU(s):     64-95
NUMA node3 CPU(s):     96-127

[test cmd]:
fio -filename=/dev/disk/by-id/wwn-0x6883fd3100a2ad260036281700000000 
-direct=1 -iodepth=32 -rw=read -bs=64k -size=30G -ioengine=libaio -numjobs=1
-group_reporting -name=mytest  -time_based -ramp_time=60 -runtime=60

1.bad (the kworker and the irqsoft are work on different cpu package)
Jobs: 1 (f=1): [R] [52.5% done] [852.3MB/0KB/0KB /s] [13.7K/0/0 iops] [eta
00m:57s]
Jobs: 1 (f=1): [R] [53.3% done] [861.4MB/0KB/0KB /s] [13.8K/0/0 iops] [eta
00m:56s]
Jobs: 1 (f=1): [R] [54.2% done] [868.2MB/0KB/0KB /s] [13.9K/0/0 iops] [eta
00m:55s]

2.good  (after pactched, they are work on the same NUMA node)
Jobs: 1 (f=1): [R] [53.3% done] [1070MB/0KB/0KB /s] [17.2K/0/0 iops] [eta
00m:56s]
Jobs: 1 (f=1): [R] [55.0% done] [1064MB/0KB/0KB /s] [17.3K/0/0 iops] [eta
00m:54s]
Jobs: 1 (f=1): [R] [56.7% done] [1069MB/0KB/0KB /s] [17.1K/0/0 iops] [eta
00m:52s]

Biaoxiang Ye (2):
  workqueue: implement NUMA affinity for single thread workqueue
  iscsi: use dynamic single thread workqueue to improve performance

 drivers/scsi/iscsi_tcp.c  |  8 ++++++++
 drivers/scsi/libiscsi.c   | 12 +++++++++---
 include/linux/workqueue.h |  7 +++++++
 kernel/workqueue.c        | 40 ++++++++++++++++++++++++++++++++++------
 4 files changed, 58 insertions(+), 9 deletions(-)

-- 
1.8.3.1


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1563991180-11532-1-git-send-email-yebiaoxiang%40huawei.com.
