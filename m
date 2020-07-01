Return-Path: <open-iscsi+bncBCVPTQVVPQILB7HP64CRUBGJTTQZE@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B15210255
	for <lists+open-iscsi@lfdr.de>; Wed,  1 Jul 2020 05:08:33 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id f20sf2193408oot.7
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 20:08:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593572912; cv=pass;
        d=google.com; s=arc-20160816;
        b=sB3+Ss5pbswhWFf0vRfTMSEz8YiYk5N7Bk5VQM5NsBuBDr+OLCZOyEgd3oT8/wXfVG
         qej1Byj7ipvj5lyZprIpnTn7WO1QLetNRQAOMDBpuZvY2Atupu4Qtx0UuyxvIEH0Pj2I
         DO9NPv+gWOuYeflIGGvqTaa7Xse39jQV/Nep04PH+NUzpOdeHKh7MWkv6xd//b3OZSrs
         CQXC1ptqKQxuObS9PGK/bCn/81cvbvy7LfrNFFNgJ9h04Dnhu2Ak9sV9mJkJUF6gVTuG
         4uWwLPqmGgRGmWfvuBS+nraMDX6vRqde19GDvIMW+Wr9BLz8JnzCSepBOWmNXXjn7NVD
         ZzJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to
         :message-id:date:subject:cc:to:from:mime-version:sender
         :dkim-signature;
        bh=3yuTemMB57QlRba37bG7TkYZ5qokKcQMhC+9VOOuIe0=;
        b=F0QtjqOn3h+0Ohr0uVBZraNttW5ypXLGg9PEf6wNaNhH55kR3hVzu1ZqNOEt8QwzAs
         xGzaSgmg8nGT9ShBt29IOOhTILNNhH42UowQHtzxJw4pffZnMigMZhUPr3fZidDeSoxU
         uUE0wtMqanShad60BEVUkumDZ6tivQ0rGAXhxbwNgTfOYFUyVGpXG3kVxyBubzWW4c+y
         oVgTXuxTLOL2rq3D0TOWXrTMN2QJVe+zOrTx+9pCQaJH4SfcGwbGrxmV2mXudCXWupij
         0W+erRb/C9aCISVWwxDPF8nfVKBFKdnwmZmsiB9ADvBdX/CKyEFjETYBFYAxXugPT0jm
         x57g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=KmO7jwMh;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3yuTemMB57QlRba37bG7TkYZ5qokKcQMhC+9VOOuIe0=;
        b=f0xi8uMGaic1fujXUZZhvu3nVj1HM/NbptvLy4kecXgOhSonD+NPM5PxGBIRasCyR8
         dXom66CBtx9ewxE3RM/Y0fXPBkLyC/9cLifZ3BfsojqVT8/NE1/DCBxPmsdeLbaswN3o
         V2Hbt3N3Ym6bK+r9mahx6o1Mf2oW5sdYzQBevrF5QVfISKzdYBaWMYP9OgWzgZGDcanl
         g8XCJ0jmU7tV5ZoUgAf7YOcNcJsMbJ7LjoJqjxC/3SRH2ZjsHiJkNmlOgM3gdV9ClHbM
         gLJrPuWwXCeFyD/mbKtv3NN2pI/LFgWVW+gOR/gdFlEL+vRs9dgJehe5LpBHCgpS8aTw
         +N2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3yuTemMB57QlRba37bG7TkYZ5qokKcQMhC+9VOOuIe0=;
        b=IfHLbBjFP7wIsy8ZwTB0KxeZu8GoJ7uMJxjrLP0O3WFk0Tapf7Ut8GyyfwmQHpTl/s
         78neEhlJQ+rGSFZeNzYDprVaJ6/FSKGGRviMtDOKZEb89MohCYGFHP/8TU0q22p3ezLG
         9o9d3ASDjBIH3ZcA90CbBZ7SozhPtJJqi26i9pwVUMOxXY6YRdxZzy/ByemYiUKo+X7A
         AKiiEz1iPZF+k2FjKJ/LYyaDQcYxvTeS3xHPM+qGRAZDEGRufAMi/ugiT8ujfzhcO323
         7FAYM7Zp7p1sNhBxQCsytxIjoL+cpCqWe7wF2Htgts4/QeUmROWmP3qXNJ3ViY9K9lC6
         KlMQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5303rOa4NQMcvAO2/CgCSvrb5Jj+tOXbNiBvjSWPVR1rrdZoOXBv
	8Xpb2TLGRk3UhkvPkWxpsVo=
X-Google-Smtp-Source: ABdhPJyGvesqvBys0DzHc5kDhcCaGOPZHVIPPITe3rG/rTH3BJSX2OAh+G1Qx5/5Lx8/BI65L93gsQ==
X-Received: by 2002:a9d:1c7:: with SMTP id e65mr19129424ote.147.1593572912687;
        Tue, 30 Jun 2020 20:08:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:544a:: with SMTP id i71ls204912oib.9.gmail; Tue, 30 Jun
 2020 20:08:32 -0700 (PDT)
X-Received: by 2002:aca:544d:: with SMTP id i74mr3509309oib.105.1593572912211;
        Tue, 30 Jun 2020 20:08:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593572912; cv=none;
        d=google.com; s=arc-20160816;
        b=Cj9pW/6rJmY4qTGP9W2DA9XxzBYXCxFK10j7ifQ1q2MO0Td695k5qVHeT3T9JXlGRE
         QnUjwOo8Wu9jnXSubPPY2+/JYtrtDvlxxWcyJcVtsnRtARd1/dYEgY0dNF/YnQVL5iS9
         7hex67mfqQIZhkdeknDsyOdw+Cx1R3TZCA37ZNCiZa4kot32lWSKWIZV+Ipmk8CdPHNL
         4uaMCDmNXmXcSTLBTcID/PmGr1SvLWcc2Kkl2bJcGBy+Hin7NziOcNvPCxkdsb9UXjIt
         /W0z/zgM2oj4IJk4kouqvsAOZS1x19MF+0u+cKB3njwMlgXunpxTDVnyNVsCcsgu+Iim
         tlwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=+GuHMGP7ithyKIW0X92z9lQki5JOgxvJkBJdlY6vsSA=;
        b=R4SEXqRrrxzFJJ1Myk7D3nkeaAl6GsKGUiF5rL3DzzjWOX2j6brv7yK6kFNM+BUoa3
         I9P0qHDRspNznaHnxhN92l3I0uSrRWSPMmJhy+tkCreNTTrehoTZiBTDy87cY+EgmByV
         xw0cmiW/bvnIoEtKqtaf9DrogwE545O2K0s/spjWAoZOBbsyf5YSgwl9J2ZAIzUlBkQD
         K5SJ1SUgpBfuSZISlTLMIYSOCYaVPA7kUEKaxUxR0WH/cuNq383kKEaig/2J6cD1//Xp
         ntaj23c2p+npyybJ6fywpf9t+yy67BFBrBEcE5nDSE2OaowRqLdxE3C+3BnR520TUODF
         pIsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=KmO7jwMh;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id g38si131998otg.2.2020.06.30.20.08.32
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 20:08:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06138VIS144102;
	Wed, 1 Jul 2020 03:08:31 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 31wxrn7uxv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 01 Jul 2020 03:08:31 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0612wjQT140530;
	Wed, 1 Jul 2020 03:08:30 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 31xg1537n2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 01 Jul 2020 03:08:30 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06138TRI029727;
	Wed, 1 Jul 2020 03:08:30 GMT
Received: from localhost.localdomain (/183.246.145.120)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 01 Jul 2020 03:08:28 +0000
From: Bob Liu <bob.liu@oracle.com>
To: linux-scsi@vger.kernel.org
Cc: martin.petersen@oracle.com, open-iscsi@googlegroups.com, lduncan@suse.com,
        michael.christie@oracle.com, Bob Liu <bob.liu@oracle.com>
Subject: [PATCH 2/2] scsi: register sysfs for scsi workqueue
Date: Wed,  1 Jul 2020 11:07:45 +0800
Message-Id: <20200701030745.16897-2-bob.liu@oracle.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20200701030745.16897-1-bob.liu@oracle.com>
References: <20200701030745.16897-1-bob.liu@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9668 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0
 mlxlogscore=999 suspectscore=3 bulkscore=0 mlxscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007010018
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9668 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 phishscore=0 adultscore=0 cotscore=-2147483648
 lowpriorityscore=0 suspectscore=3 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007010019
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=KmO7jwMh;
       spf=pass (google.com: domain of bob.liu@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

So that scsi_wq_xxx and scsi_tmf_xxx can be bind to different cpu to get better
isolation.

This patch unfolded create_singlethread_workqueue(), added WQ_SYSFS and dropped
__WQ_ORDERED_EXPLICIT since __WQ_ORDERED_EXPLICIT workqueue isn't allowed to
change "cpumask".

Signed-off-by: Bob Liu <bob.liu@oracle.com>
---
 drivers/scsi/hosts.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
index 7ec91c3..37d1c55 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -272,8 +272,10 @@ int scsi_add_host_with_dma(struct Scsi_Host *shost, struct device *dev,
 	if (shost->transportt->create_work_queue) {
 		snprintf(shost->work_q_name, sizeof(shost->work_q_name),
 			 "scsi_wq_%d", shost->host_no);
-		shost->work_q = create_singlethread_workqueue(
-					shost->work_q_name);
+		shost->work_q = alloc_workqueue("%s",
+			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
+			1, shost->work_q_name);
+
 		if (!shost->work_q) {
 			error = -EINVAL;
 			goto out_free_shost_data;
@@ -487,7 +489,7 @@ struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *sht, int privsize)
 	}
 
 	shost->tmf_work_q = alloc_workqueue("scsi_tmf_%d",
-					    WQ_UNBOUND | WQ_MEM_RECLAIM,
+					WQ_UNBOUND | WQ_MEM_RECLAIM | WQ_SYSFS,
 					   1, shost->host_no);
 	if (!shost->tmf_work_q) {
 		shost_printk(KERN_WARNING, shost,
-- 
2.9.5

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200701030745.16897-2-bob.liu%40oracle.com.
