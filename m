Return-Path: <open-iscsi+bncBCVPTQVVPQIJHBUI64CRUBHV6UBOO@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 478A71F656B
	for <lists+open-iscsi@lfdr.de>; Thu, 11 Jun 2020 12:10:28 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id j16sf4625722qka.11
        for <lists+open-iscsi@lfdr.de>; Thu, 11 Jun 2020 03:10:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591870227; cv=pass;
        d=google.com; s=arc-20160816;
        b=VQR6elr704vKbxSZGIV9EhpgKb59pf1r5wl4KUBg0T3us7Yahy5xHm8pHKl9JU0qre
         XAAXfc6UlL+qV4NMAs10F5wowzkZ9Aj0m/RU8SXnwjqcexHJO4kSs8/iqI1ohuwM5aO1
         qIqOIFMYRAlJvz4HAPkvETyTMDDmCX6pn0S5oXYV9cUgw/BB1+Mg771Qz2aYsZHqVt7f
         5SKZxub1pYskeZc5EvR0U/AET4zhT7RQ2zbr3hVM4Q8gzMIwBaQcxgjxJxDMQkg62o75
         MXnmFY0kpZpm6WQyzGlTm9N/ihxF6lovufmb2s+89ZsQOvuNST+x0i/ejS1RbsxAClvs
         6D2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:in-reply-to
         :message-id:date:subject:cc:to:from:mime-version:sender
         :dkim-signature;
        bh=XsI47nZQbunEXOdmr+sKv1eS5t7sfwgflMaYqI9zwdU=;
        b=xks9nFrP7JfIK1MPN+OUfLYKv9hW2iLADGNSIf699sJVOE9P/vNQyHOm/GImM1l0HI
         RYNANnBY4b0MKE5y3/gUJIbjkCjRbYd6AOG7ARjYSg0XXV1UNPiLrh4F29wUevRt/dqw
         qAs6Z2ly63UYrHOpr5sP+hYpbUk0JXYURd56H1vhTqbc8HX/17dsiETC5MlkcXHDtqN0
         0oiNTvJ99cvQ6AattVFbvwE1sr8evevD9f6UWsJuEaRHBbO+GhQuV6owKqRSumZD6rNP
         1sF6I0sKsjZWJQtYcdtf92Y0/JD4CkATseolNZ3tQz239cNZ59ivY3esOl2U78vKkjWj
         sLEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=gcFsKcwM;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XsI47nZQbunEXOdmr+sKv1eS5t7sfwgflMaYqI9zwdU=;
        b=N43DsG3U0GwCId+8xgSMUxwwU7qzOJKNssq8nJ5J0L9v2JIY0FC/H6/BMT4uXHtxBR
         EWB/vC8ibY3T8mM47ZXYR7hvBLf6VDag3Lrl4M58+qBVAHajmml7DRY1WPyM/rHJ3Js7
         wrMtfpuB8kd6ZX0upC7horhgTFkdNClsQemV1PafHn/PYiXR7vdFixIvqYqmCXrHLn22
         0Q7MsxVhFz2uJLJhnOId6RT2xG0EsdA76eECwqW4lo2k/AqUcVzt2jKTsBs6Zo3tak0J
         HlJ4ThTXKdDBgOFxww7pPBbrhm1FcVPquNHS5x83vvxy8ATEV4XBH474tTIXdl4clwq/
         KkGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XsI47nZQbunEXOdmr+sKv1eS5t7sfwgflMaYqI9zwdU=;
        b=Ew63KkEcNFCjldbPzrU1DzCnG1HPZgO6puh8mlkA/2vmdeNSS1NaBxZAOexnVEO51O
         GWDWTek8/RmdAPC/ptana+tBCm3lMQEi87oZwsLu7ICgfU7YB5saz1tfl0Ngs0i3oqDl
         R3lGQzHQ5eEaiEM2dp8YZ5E0dpmCRUX+fCQyZeOoWvaYuH5prakB1PXP6EVsdx3oq3Z4
         i471xWRAT8H+ubP6GP1HZh34J1Y82bN8997mHX16yf1oz6OjQg8a6bFfHoqBdu6Wj3xP
         XGUKaBqKTL2YG2lyxeZl6Rh2LHd5l6xq5eWRhsxDH7EtL8A9xUrHYL33zHNnSWtAVGdA
         LoOw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531X+NP1na/jlvQEh14VtwBnU80/r7nvyhSH+ecipw0cRo5lAAum
	si0VttRJHAIPRNXh3sBqaWM=
X-Google-Smtp-Source: ABdhPJwe6H7ufC4sP2Rz8NtTa596uC/B29rRKmgxABA625U9QoV2njRVWGGjIphORn45zgy4seZJeg==
X-Received: by 2002:ac8:724b:: with SMTP id l11mr7611115qtp.255.1591870227116;
        Thu, 11 Jun 2020 03:10:27 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:658:: with SMTP id 85ls766893qkg.4.gmail; Thu, 11 Jun
 2020 03:10:26 -0700 (PDT)
X-Received: by 2002:a37:8e04:: with SMTP id q4mr7714727qkd.389.1591870226775;
        Thu, 11 Jun 2020 03:10:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591870226; cv=none;
        d=google.com; s=arc-20160816;
        b=V7r1bofwtMeR6IhlqNY3msVPNbXtVwK1qxXhxIo9P4+w0O1e84N/AGxmWvTTsfIn6x
         SR4v6Obuonr2I1lBniwU5P3MPV8lypp+2pgycpTxxga+JQYQ3daN1lHZLzcCCPMQFO+W
         ULLGS9twHQKM8uJPrVgElSLGLQwr800idLiZYIsuDiiy5L71lbRdLeAYopGT0RZOCo1Q
         YHS2TJQi7h5E8f9yH781GIxey3BWS/wwtPFGijj319E7ygNKrapvlr+n/OXTmjbaFNJT
         l+bnAwVRsn7bQ8MtXeSpUnVhz7FELfv7y22HWP9p9k5gLpTi8SBw+NyoWQaCbnW3jm9U
         AWXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=IwBCM+hJeskaz3TsvUhPt5M+TeyH9rZ0QcVjuHy3CzI=;
        b=QU4xU9HuMwVDBBy9IN4emVuGYlMcli7ItcgVB7/5JO2erakrlEDVOePSEWQdMeRp9L
         xlJBe/M9rXZWyUYgy60P9LKD/4SmO2lTQy4EzK54AJFqZs11Qe2SW4vvvxn2p89PBQX4
         1IZ78JQCr9GcRFg8RsWtVzTLqJ3ZsoyR87jz0rGz6t+fvuj/u5I/y+HD/2Lot2QAwI4R
         x4b4ZIuWjO6dr4dQg38taouHJxUqeAqp8tohrPgNI3awaitRsTTfgf1cCZr3xRJCKMQ3
         njb9OYgYwMnlCkejlH4RO0XWAJuCp9hNXJBRQB00tu+UTfFu3HmTZnDUz8lXy8ZFqgkb
         +S/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=gcFsKcwM;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id x78si142824qka.4.2020.06.11.03.10.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 03:10:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05BA6rAh013287;
	Thu, 11 Jun 2020 10:10:25 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2120.oracle.com with ESMTP id 31jepp0vbw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 10:10:25 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05BA7lCL056640;
	Thu, 11 Jun 2020 10:10:24 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 31gn319jv5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 11 Jun 2020 10:10:24 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05BAANGK016532;
	Thu, 11 Jun 2020 10:10:23 GMT
Received: from localhost.localdomain (/183.246.144.78)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 11 Jun 2020 03:10:21 -0700
From: Bob Liu <bob.liu@oracle.com>
To: linux-kernel@vger.kernel.org
Cc: tj@kernel.org, martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com, lduncan@suse.com,
        michael.christie@oracle.com, Bob Liu <bob.liu@oracle.com>
Subject: [PATCH 2/2] scsi: register sysfs for scsi/iscsi workqueues
Date: Thu, 11 Jun 2020 18:07:17 +0800
Message-Id: <20200611100717.27506-2-bob.liu@oracle.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20200611100717.27506-1-bob.liu@oracle.com>
References: <20200611100717.27506-1-bob.liu@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9648 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 malwarescore=0
 bulkscore=0 adultscore=0 mlxlogscore=999 spamscore=0 suspectscore=3
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006110078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9648 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 suspectscore=3
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 malwarescore=0 mlxscore=0 cotscore=-2147483648 adultscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006110078
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=gcFsKcwM;
       spf=pass (google.com: domain of bob.liu@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
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

This patch enable setting cpu affinity through "cpumask" for below
scsi/iscsi workqueues, so as to get better isolation.
- scsi_wq_*
- scsi_tmf_*
- iscsi_q_xx
- iscsi_eh

Signed-off-by: Bob Liu <bob.liu@oracle.com>
---
 drivers/scsi/hosts.c                | 4 ++--
 drivers/scsi/libiscsi.c             | 2 +-
 drivers/scsi/scsi_transport_iscsi.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
index 1d669e4..4b9f80d 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -272,7 +272,7 @@ int scsi_add_host_with_dma(struct Scsi_Host *shost, struct device *dev,
 	if (shost->transportt->create_work_queue) {
 		snprintf(shost->work_q_name, sizeof(shost->work_q_name),
 			 "scsi_wq_%d", shost->host_no);
-		shost->work_q = create_singlethread_workqueue(
+		shost->work_q = create_singlethread_workqueue_noorder(
 					shost->work_q_name);
 		if (!shost->work_q) {
 			error = -EINVAL;
@@ -487,7 +487,7 @@ struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *sht, int privsize)
 	}
 
 	shost->tmf_work_q = alloc_workqueue("scsi_tmf_%d",
-					    WQ_UNBOUND | WQ_MEM_RECLAIM,
+				WQ_UNBOUND | WQ_MEM_RECLAIM | WQ_SYSFS | __WQ_ORDERED_DISABLE,
 					   1, shost->host_no);
 	if (!shost->tmf_work_q) {
 		shost_printk(KERN_WARNING, shost,
diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 70b99c0..6808cf3 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2627,7 +2627,7 @@ struct Scsi_Host *iscsi_host_alloc(struct scsi_host_template *sht,
 	if (xmit_can_sleep) {
 		snprintf(ihost->workq_name, sizeof(ihost->workq_name),
 			"iscsi_q_%d", shost->host_no);
-		ihost->workq = create_singlethread_workqueue(ihost->workq_name);
+		ihost->workq = create_singlethread_workqueue_noorder(ihost->workq_name);
 		if (!ihost->workq)
 			goto free_host;
 	}
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index dfc726f..d07a0e4 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -4602,7 +4602,7 @@ static __init int iscsi_transport_init(void)
 		goto unregister_flashnode_bus;
 	}
 
-	iscsi_eh_timer_workq = create_singlethread_workqueue("iscsi_eh");
+	iscsi_eh_timer_workq = create_singlethread_workqueue_noorder("iscsi_eh");
 	if (!iscsi_eh_timer_workq) {
 		err = -ENOMEM;
 		goto release_nls;
-- 
2.9.5

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200611100717.27506-2-bob.liu%40oracle.com.
