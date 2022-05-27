Return-Path: <open-iscsi+bncBAABBYHYZ2KAMGQERSRHQWQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x40.google.com (mail-oa1-x40.google.com [IPv6:2001:4860:4864:20::40])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF8C53722E
	for <lists+open-iscsi@lfdr.de>; Sun, 29 May 2022 20:33:07 +0200 (CEST)
Received: by mail-oa1-x40.google.com with SMTP id 586e51a60fabf-f2db7440d8sf5351850fac.9
        for <lists+open-iscsi@lfdr.de>; Sun, 29 May 2022 11:33:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1653849186; cv=pass;
        d=google.com; s=arc-20160816;
        b=k8neqzaOV1PhXtHxHXMYjeNWXmSRLFVr1Gz1WW9a3AxoA4L7+AsUvsSn16e7vqT+Kr
         n+TuGFXC46rzqx5GElJf3PcClaBtgVZryyvtbDxmT9d2bhj6ixMcMSmNb1ROobcbDOnP
         Y48YBEurGfw/8dfAHStZ45y4O0imBvQWUSCLvtUQXvuVIhVmQYFsu/6hbw1gqYDhyw45
         JULPGRy5gF7lFJp0XUnDDVHFJ2tFt/8bvA8yMay64tRyZwHBFvVPEYMnzHx5g0f2pnsr
         6lWvLi86yykoheSNkXw9Hg7YlfUovtdbjTWfj5rADXUTA+OrvnRJuKszjdyLDVeZ1tim
         w89g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=2CZi8kmQqRrZ8jRTTK5G6BJzC+TUfCG3zzdXvJ+nFu4=;
        b=JVmcp8O4SpQcbU7U+uAjnw2occJCGzOMwWi0kWFhetOWg6gOsu8v1C4TE1hoLlcVxi
         2eB7wnhXKafOdDBZkMKwLSELe1iAD0ewI9DDyiD6nVE6AHHDPXTzjWLYyhvPaIg7/b+Q
         sMi8MVSfepavKYdQTGC0K6s25ancfXhrZcHthLfACVQDwT9R7iFc3RznfBqW9MYOwo67
         3LtbLzsV28KutRMizFnyknzc3ExdCZisYs2roxjjNoerLJh/v9GxhBvuZFzGHtR/rx/G
         28oocWYnf3OpSLr28XJ5Dvb4+c96sDeyMfEro/P0GWd2Nm/OcUlZNRrTeKOCS00EjtRY
         Uh0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of liuke94@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=liuke94@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2CZi8kmQqRrZ8jRTTK5G6BJzC+TUfCG3zzdXvJ+nFu4=;
        b=qdQSRGfMnAKwoPIuX/8fuhQOcybiW909RjU+0xQO6VjEeOoBREDm8AlyRufR4QPbHQ
         hyA2hLbl7V+hEpEUFNtks13ymmRceoG+sV+DrU5FC1u6GNJ+/8pDcOh1TS3Y+fYKJG6/
         9OcGqLYsF8cXb+pt5M7im57HgQPa0FtONsun8/svWMXPZVpJNMxcJPXzM8Au9dAx6UTI
         +HvXTM2BJE3/8GSRHp1lo09dhAXgpFBRw4D9D+Z4jJV9NNcd3UVq4VAFZFU7P99A6IWn
         c9OZwbxGlaC5+kTOQdBJJ14kKrKIwDbhogq7p/f+XkwjFTjiwb5XwGMFWZpqLDShg9f/
         RLig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2CZi8kmQqRrZ8jRTTK5G6BJzC+TUfCG3zzdXvJ+nFu4=;
        b=s82UDFDtIA+akyAgY9n2/lGYDgOnxIgNmUAxUr3M15roXlVSLpUsVYqNbScN1c3LY6
         Y4kYavkSH/sBI3aNIpzFZU9T4+joGFrKdSBpxORlQFNUFvfZOZcdxiHiI2xBwu05n6uO
         dwlpAhC5JPQeu5tvvrgxteqX7LSCrmXxVfXXokWgOvGQr591eSqwepL8GcjQRT3zybcT
         y+TAdIoacQbW43ag6a+DoV6pxSF0wK2HkL/zlGkXUhiD52YaM/bXoijwHLJBFDZ+gjP7
         rmEy1K6V2XOtjN9qOejtK69+ZB6zlmUL/L6B8OsrccuABd/Qyfi8XVK2lfX0VzApD9eJ
         5hkg==
X-Gm-Message-State: AOAM533xq4CRgq7OI2EQhFnEXlIs4NUNflXUo/xCB267VgRowLZdsZP3
	3KG178dL5qna4ABRquQlVgU=
X-Google-Smtp-Source: ABdhPJyDWuIEqRu5roPP8V8jb6ey8WsjHceTisIXEnpSfNMUF4f4BBTgs77XM0g4xC9KwmSTM7GibQ==
X-Received: by 2002:a05:6808:191f:b0:32b:670f:90f3 with SMTP id bf31-20020a056808191f00b0032b670f90f3mr8029345oib.180.1653849185751;
        Sun, 29 May 2022 11:33:05 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6808:15a4:b0:32b:1a5d:cb2d with SMTP id
 t36-20020a05680815a400b0032b1a5dcb2dls8969056oiw.7.gmail; Sun, 29 May 2022
 11:33:04 -0700 (PDT)
X-Received: by 2002:a05:6808:1143:b0:32b:8655:a457 with SMTP id u3-20020a056808114300b0032b8655a457mr8686503oiu.121.1653849184709;
        Sun, 29 May 2022 11:33:04 -0700 (PDT)
Received: by 2002:a05:6808:1920:b0:326:a7d3:3641 with SMTP id 5614622812f47-32bd10586a1msb6e;
        Fri, 27 May 2022 01:09:22 -0700 (PDT)
X-Received: by 2002:a02:9582:0:b0:32e:98ba:75e4 with SMTP id b2-20020a029582000000b0032e98ba75e4mr17063441jai.305.1653638962438;
        Fri, 27 May 2022 01:09:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1653638962; cv=none;
        d=google.com; s=arc-20160816;
        b=ZAPklKLKpZhDivt6p/Hdk/VoS1ePmk/1LquG+nF1Vj1DPqf6x4UYUHCABPXuFUZS6l
         3B+31lntf9PBFFQxeHwnOmP5hX6grShTkQmohlThQ9esxVgtQ83kHqKapvr7ZCUpL0By
         Oj9s2CWBUASvIUi2vZFszTYR673D2oqi9ClWRXf90n5SW/JTLP/WpbQ5kGX+yNpcp3H3
         OeUosqUs6Q4hQt7lBg8UAoMlF+fEF5LXBWsprX2SBjQKujj9gAK0hxk17l1qdiHaWzx1
         D0I6swlpVHxEXPX2b6OdmJHVAMqo+hLtjFQtG/0osRNAcBP19T6w+o5+I2teIqVg1obe
         4RDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=YQA9A8qRTh58SF2l3e6R7oauON0ubDsxpUM5Af+3744=;
        b=LU0PlgZIlvgPUrRuGpIIYEEJOd+WRg3U2fBx+EjywOeLwK8GIjRqAH2qhuRRqv0HOo
         r8nlxzyH2ssNL9U6oTgxRDTc25Z0I+yCs+mTpieOc98bQdRVy+ZuXQVnlJJkyxbekJqY
         3uDTl/7P8A6kPbAPQZDaaVXcojwCG+yDPWbnXAfLblsWp655hesydOBG8GpAteUOWFzy
         /FUA5Auk8fZyFsFP4WFul8NBhRY1jZwqP4P14a0AK9oKPuBAVYvxjqF+97qQcVH49JuF
         EYRnwvBfD/cPG4T7JEM2WvgW5Xb/eIZFICqCOyQG/fy+ckisFCyYZhvFpviwhLf4rgb5
         zCxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of liuke94@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=liuke94@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id g8-20020a056e021e0800b002d19fa6b1b2si193117ila.4.2022.05.27.01.09.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 May 2022 01:09:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of liuke94@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4L8cqQ63MKzbbq5;
	Fri, 27 May 2022 16:07:46 +0800 (CST)
Received: from dggpemm500018.china.huawei.com (7.185.36.111) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 27 May 2022 16:09:20 +0800
Received: from localhost.localdomain (10.175.112.125) by
 dggpemm500018.china.huawei.com (7.185.36.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 27 May 2022 16:09:19 +0800
From: "'keliu' via open-iscsi" <open-iscsi@googlegroups.com>
To: <jejb@linux.ibm.com>, <martin.petersen@oracle.com>, <lduncan@suse.com>,
	<cleech@redhat.com>, <michael.christie@oracle.com>,
	<linux-scsi@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<open-iscsi@googlegroups.com>
CC: keliu <liuke94@huawei.com>
Subject: [PATCH] drivers: scsi: Directly use ida_alloc()/free()
Date: Fri, 27 May 2022 08:30:49 +0000
Message-ID: <20220527083049.2552526-1-liuke94@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.112.125]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500018.china.huawei.com (7.185.36.111)
X-CFilter-Loop: Reflected
X-Original-Sender: liuke94@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of liuke94@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=liuke94@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: keliu <liuke94@huawei.com>
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

Use ida_alloc()/ida_free() instead of deprecated
ida_simple_get()/ida_simple_remove() .

Signed-off-by: keliu <liuke94@huawei.com>
---
 drivers/scsi/hosts.c                | 4 ++--
 drivers/scsi/scsi_transport_iscsi.c | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
index f69b77cbf538..ec16cfad034e 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -350,7 +350,7 @@ static void scsi_host_dev_release(struct device *dev)
 
 	kfree(shost->shost_data);
 
-	ida_simple_remove(&host_index_ida, shost->host_no);
+	ida_free(&host_index_ida, shost->host_no);
 
 	if (shost->shost_state != SHOST_CREATED)
 		put_device(parent);
@@ -395,7 +395,7 @@ struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *sht, int privsize)
 	init_waitqueue_head(&shost->host_wait);
 	mutex_init(&shost->scan_mutex);
 
-	index = ida_simple_get(&host_index_ida, 0, 0, GFP_KERNEL);
+	index = ida_alloc(&host_index_ida, GFP_KERNEL);
 	if (index < 0) {
 		kfree(shost);
 		return NULL;
diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 2c0dd64159b0..2578db4c095d 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1975,7 +1975,7 @@ static void __iscsi_unbind_session(struct work_struct *work)
 	scsi_remove_target(&session->dev);
 
 	if (session->ida_used)
-		ida_simple_remove(&iscsi_sess_ida, target_id);
+		ida_free(&iscsi_sess_ida, target_id);
 
 unbind_session_exit:
 	iscsi_session_event(session, ISCSI_KEVENT_UNBIND_SESSION);
@@ -2044,7 +2044,7 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 		return -ENOMEM;
 
 	if (target_id == ISCSI_MAX_TARGET) {
-		id = ida_simple_get(&iscsi_sess_ida, 0, 0, GFP_KERNEL);
+		id = ida_alloc(&iscsi_sess_ida, GFP_KERNEL);
 
 		if (id < 0) {
 			iscsi_cls_session_printk(KERN_ERR, session,
@@ -2083,7 +2083,7 @@ int iscsi_add_session(struct iscsi_cls_session *session, unsigned int target_id)
 	device_del(&session->dev);
 release_ida:
 	if (session->ida_used)
-		ida_simple_remove(&iscsi_sess_ida, session->target_id);
+		ida_free(&iscsi_sess_ida, session->target_id);
 destroy_wq:
 	destroy_workqueue(session->workq);
 	return err;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220527083049.2552526-1-liuke94%40huawei.com.
