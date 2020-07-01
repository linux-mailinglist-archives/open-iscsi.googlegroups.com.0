Return-Path: <open-iscsi+bncBCVPTQVVPQILV7HP64CRUBBTRO5U2@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id B9491210257
	for <lists+open-iscsi@lfdr.de>; Wed,  1 Jul 2020 05:08:43 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id ee9sf12792001qvb.6
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 20:08:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593572922; cv=pass;
        d=google.com; s=arc-20160816;
        b=NCxtsumqUr6QBuYIza5VMpsStZrxDRk2ijp37gV1VCrhCfnHgb9vpwgKq0RebKQ01H
         UzSEgxmkK1MbH0VD1qGfxR6QAxKC4aW8EoVv9GzbZCIlu6Q9AEo7xK4g3o9FgmBXRHqa
         dSWnHT401DCOmpb9Q9ASa1ANN1VUzAxGzK2cHbXKugzV21BzDR9QPI1wgoHaGvXAJfH1
         eGIF3B09FeOI2tDI0yXS6vWI7j4LYy8jkatemb6NM8wAEkgoeB4XBDPUHk4U1luPkgGI
         OmvuHl/008pYEEQ7zXB8xvcEuvBPuV5Wb2wKxQP3nxtvcLkHLaUJoTpKQCZ48vaZTN6m
         twQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=MY6gENw7snRGj/LUCoGCX+oifwwzoEGK3eDVToMh2bQ=;
        b=Xt3EFyQtWWs7TIjCqQvLE019vceDDrcq0HBWgYAcOEWhfF/nX/IIu0alnV6/APbiH2
         VCQuMrOCnI4nYJYnRQh9Lw/lhHJnsj1pCthSUSkxOCu0G32o2EJOWQ6pEgBdZ+7MHCgI
         gI/itNdjbvnI/WatFykweXOYdnTO8wvhE0cd7dkuYlraXO4j+UnONbBltgABlfw1SfP4
         0YqH3Nq+/9leUwJJLraf1+SQnmykYl/VM7nSzcnkJjfFYAw8qR7KThjt7N4Q8mq4lF/S
         wpMo+Bv+OqYGEtoUcnQE7dbxmPb9BVdx6Ep9ykzjkV65w0PsjZnJCiBPqoX5Dy/Unreo
         I7sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=BWTHq9Ce;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MY6gENw7snRGj/LUCoGCX+oifwwzoEGK3eDVToMh2bQ=;
        b=U5jW0RRilGBMHrDZvBaq1PkhpFp8m4C5nD42iTpOUDCa/Vlg/Cp5tqCJYezDWPzlwI
         X8kFckP/8QdJlIccBuONlUVusJiv286/fKT61YHwgkWZ05h09kaE1Ir1m+itwtiLqBah
         aTBJHAxjIghTTNq5rQmWEhN6vhLeUrXpTKBIrd6XtluQHOVchkd3Sv2MC3g1y5+maF0F
         q+QKTBM4WC9OqKWLxCQWUOIVzeMl5yL858EUTEO838kwrEXRDeoY4nHQsgSDDEyyMh5d
         AGBiUuEP/olIh+FrKYvqSlVAKadrV4gVJNbS/gmdjHLEf2ra0GKTLEVlpl8GSPzsqh5E
         22zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MY6gENw7snRGj/LUCoGCX+oifwwzoEGK3eDVToMh2bQ=;
        b=nHt8drUTSwgwXGCDKScYGxkba1RmybmoU0nZdiSCNCHgk1FhngeIW7z55pt0tKTa6X
         4h8I9bGUTRY06gRn7mfUO7FQtTfgihIk+Y6DpQzMJom4XErCpEt3RZ9Kn9E31yb6sQR4
         vqCnAut+db5iV7AR8uAWv0pSILDn0G4uTukbkH2+mvId5X5yUb3373DtrlAh/Qzp1vTq
         TnEA8EpGvA7v/Vp8BqVFh+v81ZQLBCOjKKSzQ/on0pqA1ospRk9Q1eAABIHilveqEwli
         eXXzA2wAgo088dSBLlhQgpvk1gBfx9hMZD3Bt1NKL7GdD1HqqXmciv/6+AKqWGemUH5y
         U4ww==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533TYzrrXtq2NgCpn9SQUXv73kvpbbUnAAEmBvVXCPcDRkTL0N6s
	gVYONkFhJqrYD7zBQitW8fQ=
X-Google-Smtp-Source: ABdhPJwQbAYtxzRMyBAjKfAeBbpzbZpkHofUOiOygkbEObMoPsgF8YN7zUw7PgyU8T9JQv1b4g2cqA==
X-Received: by 2002:a05:620a:9c7:: with SMTP id y7mr21817404qky.55.1593572922733;
        Tue, 30 Jun 2020 20:08:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:38f:: with SMTP id 137ls297190qkd.2.gmail; Tue, 30 Jun
 2020 20:08:42 -0700 (PDT)
X-Received: by 2002:a37:9a12:: with SMTP id c18mr23617125qke.470.1593572922418;
        Tue, 30 Jun 2020 20:08:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593572922; cv=none;
        d=google.com; s=arc-20160816;
        b=t9dQ/s+sdXQhtkwSbSN5LRGtZX6leBC02a9q5wPOxwWPTt2Q2p4Yqie0G1Zphb9+4T
         xNo+KTBFnCnvFu4cK+sww8tp1NbtyfiDvc4971ggNWPqtq6WjbaRRzBxPaWSsCAJw5Bb
         jKqf7uqXqCusc3V+xIANQ5ofAZ3+B2ndxNQAzzu0N3JCVVvdJOvhctLMhS4IFqgPLlrY
         I4shSbwIbtm1emUlcX8YcSMGUQsnMey+IquGTB2U3pHn/6x3izvXIWkrBHw1jAZIkamV
         aMGhA7hNT33QdJve0P7t5uTKodXni2dGwLHyI/6twOgwr+/cp5x3G2fdl7TTV39BkvwC
         H7nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=a7yNOUb+wQ/nGeOPYpyTwZ5QCHRtZL32gZTofQ8o/lc=;
        b=HK36xUcSgMDs7PFv3d/cRSrLykkhFfxi5geNTw2HYisfBKecP87eTB/nO7WTZR/E/1
         OKHe76Edp8nljb5kPpgHCrTcqWiwOwihN7FVzFIlSvBhPWQhX7F816cn1aI/Y2DBSKmg
         c6lK7703orhLYQ+bGvziXYGEDJE/GHtXeKfAHWMg1dEFCfLZiuiBEblkISh4oHd/4cKK
         3ULryHHEgufMo7FSBhrZ4rYVMAe8OPYW0qUXvNjIVxMX81vIIaWCJYHRGyrrTOoL4wD+
         2HSRluIxoAoDoyzoP8lgc6S1GSwOR7zoLlsQQDHRyAceibYiAhT6c8XREWU4ATpNmt8H
         dqHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=BWTHq9Ce;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id u17si246951qka.5.2020.06.30.20.08.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 20:08:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06138fAC144145;
	Wed, 1 Jul 2020 03:08:41 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 31wxrn7uyd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 01 Jul 2020 03:08:41 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06138ddU158080;
	Wed, 1 Jul 2020 03:08:39 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 31y52jq9uu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 01 Jul 2020 03:08:27 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06138PJf020765;
	Wed, 1 Jul 2020 03:08:26 GMT
Received: from localhost.localdomain (/183.246.145.120)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 01 Jul 2020 03:08:24 +0000
From: Bob Liu <bob.liu@oracle.com>
To: linux-scsi@vger.kernel.org
Cc: martin.petersen@oracle.com, open-iscsi@googlegroups.com, lduncan@suse.com,
        michael.christie@oracle.com, Bob Liu <bob.liu@oracle.com>
Subject: [PATCH 1/2] scsi: iscsi: change back iscsi workqueue max_active argu to 1
Date: Wed,  1 Jul 2020 11:07:44 +0800
Message-Id: <20200701030745.16897-1-bob.liu@oracle.com>
X-Mailer: git-send-email 2.9.5
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9668 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 mlxscore=0
 adultscore=0 suspectscore=3 bulkscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007010019
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9668 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 mlxlogscore=999
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 phishscore=0 adultscore=0 cotscore=-2147483648
 lowpriorityscore=0 suspectscore=3 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007010019
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=BWTHq9Ce;
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

Commit 3ce4196 (scsi: iscsi: Register sysfs for iscsi workqueue) enables
'cpumask' support for iscsi workqueues.

While there is a mistake in that commit, it's unnecessary to set
max_active = 2 since 'cpumask' can be modified when max_active = 1.

This patch change back max_active to 1 so as to keep the same behaviour as
before.

Signed-off-by: Bob Liu <bob.liu@oracle.com>
---
 drivers/scsi/libiscsi.c             | 2 +-
 drivers/scsi/scsi_transport_iscsi.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index e5a64d4..49c8a18 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -2629,7 +2629,7 @@ struct Scsi_Host *iscsi_host_alloc(struct scsi_host_template *sht,
 			"iscsi_q_%d", shost->host_no);
 		ihost->workq = alloc_workqueue("%s",
 			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
-			2, ihost->workq_name);
+			1, ihost->workq_name);
 		if (!ihost->workq)
 			goto free_host;
 	}
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index f4cc08e..7ae5024 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -4760,7 +4760,7 @@ static __init int iscsi_transport_init(void)
 
 	iscsi_eh_timer_workq = alloc_workqueue("%s",
 			WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | WQ_UNBOUND,
-			2, "iscsi_eh");
+			1, "iscsi_eh");
 	if (!iscsi_eh_timer_workq) {
 		err = -ENOMEM;
 		goto release_nls;
-- 
2.9.5

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200701030745.16897-1-bob.liu%40oracle.com.
