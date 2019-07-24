Return-Path: <open-iscsi+bncBAABB47J4LUQKGQEBNZUTJI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 84576739C9
	for <lists+open-iscsi@lfdr.de>; Wed, 24 Jul 2019 21:43:48 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id o16sf42364920qtj.6
        for <lists+open-iscsi@lfdr.de>; Wed, 24 Jul 2019 12:43:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563997427; cv=pass;
        d=google.com; s=arc-20160816;
        b=rb2q9mJDhDsiX7CPLzCG4+Wb2H8Q3LdV371fXNKFG0uUG1zkxV3YsGNmznhN3ecXKB
         wrPC/1bxYx7LWG4n1li/w8wYFybnXL4LHKvRfjG516dD3IPdLeDFgnvrWwsJRScROUTy
         vGNtFK0Qdf+5gmI2S4alefp/H752BfBcVQbxhqnokZKn1IpLmp2qKLKO+F7Au+kf1I04
         VLPX4kkz5TNgI23K1mNKpozaQUlaJyMal8YmiZwajgBul6+yK3K7hSuhdSFGDFaafW11
         LBuLUfccMmPrioCSHcxt6H9jZTZUOJX8Sq7N8ZLXPTpVB6S051vaLMWloGi0eW7tDbkB
         9QPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=JcEBJlb8kWsCQT8ucxoDi45TQZTiyI16/P2II6vAoLg=;
        b=fCqhsdVrAvGk/a5jYKpoDOG36hQPne6awBI0Lx+kdE/4FiLiwck2mYpWQi4kMkWhl7
         FF4X5E0/Ai83EeJZSxWAVx2DFw9ij4mnptpaT5tbSQC5//jzTwooXYZFg+yfiN39Errj
         d4V2khXwopaKCoQx8xKk+7rJQM9kPXuFuw9Zj6p1jEzloJcEPrIAQhkqQowz2iNd6DIz
         uhzIEQuSX5hUMvFToliWP4J3kSHaaxnyklvf5hWD5Ld5V2qmFZ40wp5ol/lah7ZTIqt0
         BrCyFrjizRs2zgyrr3UHO3AIoGiGa8eZrpoQedpZoJoQ1GEM0Jczq/m46onXnjb8VmQo
         3Kxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JcEBJlb8kWsCQT8ucxoDi45TQZTiyI16/P2II6vAoLg=;
        b=DnzQ46hUdQzhiegZqXJdToAzKA7ZB85vseczsim2oDY2Tk7B0zich9OvtP02y2K9Ay
         OX2OUDVrbamFZOwdCZJ7INSzJ07GcnlXCOrbWP58upW8k0k/dp3nIsBGa7WNW/k5LIke
         QK7zb78EtywrxJUFbydiJPlkFGw+0TL/kEZtE/ZT+oVsb3dSNIg4ISZxFvWMwaWXhHwV
         n5rpgJLUiDY0Fk/AEaJRqqBXCwmRnzswALjnEmojIaLcdpq49RP7foB/eqCTVrAZz2mH
         ftDaGB16SyVZPV+PaUUJWbNzwNDiBl0DURO+CyqLLc9RlX1wY8dI5m9DN0Rbx2au4pyr
         WR6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JcEBJlb8kWsCQT8ucxoDi45TQZTiyI16/P2II6vAoLg=;
        b=g/jFjB0RumRvNbMpHmsNIw5Q/yRjyKokcNbbJyCSx0j4wzag6SAPMOXEiH0n3+h3cq
         9+fF6928xJyeCW9riocuN+rn0gR2dESa0h3vPFWPfSEw8afLijY2BiXXJhZKJZ2G4iJk
         fmjBumTR//zL01AB4fDmCSX1vGmjwhG/CTH1XNqzbxZs52FssPwMJHzft4A8s6Eah8Q+
         gdIYqkU6BnmUpyXbFGakDOquAIrlwJebM0yQt6rpWH6oovMjk6JnGJkbpyN81aACaS1q
         6faxez/GqHf5QXIQpRRtiRpLrMiPu//wuwUBWztHcY4JOS/EXHQ6S9+JxCCNsIVYyyG9
         h+mQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAUFVMGdXOnuq7iGZfxdTpDO5Gqp44W+QUHOrxgApDORVQS+DXQR
	04CFZTEvqPsHj4vhuP2S0Hw=
X-Google-Smtp-Source: APXvYqxzsTqurX6Z9OPNPrrEX7rNS+e0y9HbrjYg11+j3tmndihSna+fhM89KB2RmQZHdyJrWF460A==
X-Received: by 2002:a05:620a:16cc:: with SMTP id a12mr53827827qkn.256.1563997427369;
        Wed, 24 Jul 2019 12:43:47 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:a297:: with SMTP id l145ls14309162qke.12.gmail; Wed, 24
 Jul 2019 12:43:47 -0700 (PDT)
X-Received: by 2002:a37:3c9:: with SMTP id 192mr55016966qkd.37.1563997427192;
        Wed, 24 Jul 2019 12:43:47 -0700 (PDT)
Received: by 2002:ae9:e016:0:0:0:0:0 with SMTP id m22msqkk;
        Wed, 24 Jul 2019 11:00:40 -0700 (PDT)
X-Received: by 2002:a0c:b2da:: with SMTP id d26mr59870904qvf.48.1563991240549;
        Wed, 24 Jul 2019 11:00:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563991240; cv=none;
        d=google.com; s=arc-20160816;
        b=zAk80NuRNY/IYOL1jlfYFQh8+9+sPmq5S+a5tR/swlQrD9D0H5roTft8PTQXNcX5PW
         YC5zWVVj0XgQjxfnjiGge/htlMfu2Y02Z/S42Cx4C9Zf580/VilfrsYJ6isyxijq24Gw
         peAmclKys+E0uLnfLfnA2RF8KAk2UHB/u5vAAHCBrseG/2/0oXSU77h2+uXIlmpq47ht
         4SUpoXkPOGC0nnYpZp7WQDjk3l3PFKgZMJBRP1vBNucRxkbWXBybbPtiFSEuBwFM9cBJ
         sEUWOrnUiQaPfSVz/TGY5nxkc1FVsrcEsQSqLiwfM8ZhLOVrERhQ8lMyPowU9I8aYNuv
         U9HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=E/0FUlqtkUbpWDnv5AT2gICaSEDIvr5XW4TxsemKoPw=;
        b=fXs6c0tA1dfuEMwng8wYpHg4JMXfP0g+JZIBS1yNflPDeKjNuEytBMkNftanZTFtzM
         +hzuf8T3WKsPwyjH9ixK+ToyuXePmyQxAtx7jKedPxEJOMkiWvL6eAaxOS1DYMEMxhAQ
         wDocazJShIw+V6RQq6jKbiBVO6XViIHBVCmi5cGuufcjv6zPdDeztnQRvuSex0d55AVx
         Vf3H4RFl5efZ59Ijt5tv3aicmOWi+DOhQMQ5rZMunMSD2X8NkdNmL88/fW7xGH8ExKW8
         aqmqdQ8cB/GIvKfQJ+DacjjjFM+N3IIkinw9z5kHRRY3K0COGY1S7SkEXMe7SU9+9tTW
         Y2QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
Received: from huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id m23si2971499qtc.0.2019.07.24.11.00.40
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 11:00:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id ABF2C3A18F035230CC58;
	Thu, 25 Jul 2019 02:00:36 +0800 (CST)
Received: from huawei.com (10.184.191.68) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Thu, 25 Jul 2019
 02:00:26 +0800
From: Biaoxiang Ye <yebiaoxiang@huawei.com>
To: <tj@kernel.org>, <lduncan@suse.com>
CC: <jiangshanlai@gmail.com>, <cleech@redhat.com>,
	<open-iscsi@googlegroups.com>, <jiangyiwen@huawei.com>,
	<xiexiangyou@huawei.com>
Subject: [RFC PATCH 2/2] iscsi: use dynamic single thread workqueue to improve performance
Date: Wed, 24 Jul 2019 17:59:40 +0000
Message-ID: <1563991180-11532-3-git-send-email-yebiaoxiang@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1563991180-11532-1-git-send-email-yebiaoxiang@huawei.com>
References: <1563991180-11532-1-git-send-email-yebiaoxiang@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.184.191.68]
X-CFilter-Loop: Reflected
X-Original-Sender: yebiaoxiang@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.190 as
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

On NUMA machines the kworker of iscsi created always jump around
across node boundaries. If it work on the different node even
different cpu package with the softirq of network interface, memcpy
with in iscsi_tcp_segment_recv will be slow down, and iscsi got an
terrible performance.

In this patch, we trace the cpu of softirq, and tell queue_work_on
to execute iscsi_xmitworker on the same NUMA node.

Signed-off-by: Biaoxiang Ye <yebiaoxiang@huawei.com>
---
 drivers/scsi/iscsi_tcp.c |  8 ++++++++
 drivers/scsi/libiscsi.c  | 12 +++++++++---
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index 7bedbe8..dbac244 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -127,6 +127,7 @@ static void iscsi_sw_tcp_data_ready(struct sock *sk)
 	struct iscsi_conn *conn;
 	struct iscsi_tcp_conn *tcp_conn;
 	read_descriptor_t rd_desc;
+	int current_cpu;
 
 	read_lock_bh(&sk->sk_callback_lock);
 	conn = sk->sk_user_data;
@@ -136,6 +137,13 @@ static void iscsi_sw_tcp_data_ready(struct sock *sk)
 	}
 	tcp_conn = conn->dd_data;
 
+	/* save intimate cpu when in softirq */
+	if (!sock_owned_by_user_nocheck(sk)) {
+		current_cpu = smp_processor_id();
+		if (conn->xmitwork.intimate_cpu != current_cpu)
+			conn->xmitwork.intimate_cpu = current_cpu;
+	}
+
 	/*
 	 * Use rd_desc to pass 'conn' to iscsi_tcp_recv.
 	 * We set count to 1 because we want the network layer to
diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index ebd47c0..3bbe326 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -87,9 +87,15 @@ inline void iscsi_conn_queue_work(struct iscsi_conn *conn)
 {
 	struct Scsi_Host *shost = conn->session->host;
 	struct iscsi_host *ihost = shost_priv(shost);
+	int intimate_cpu = conn->xmitwork.intimate_cpu;
 
-	if (ihost->workq)
-		queue_work(ihost->workq, &conn->xmitwork);
+	if (ihost->workq) {
+		/* we expect it to be excuted on the same numa of the intimate cpu */
+		if ((intimate_cpu >= 0) && cpu_possible(intimate_cpu))
+			queue_work_on(intimate_cpu, ihost->workq, &conn->xmitwork);
+		else
+			queue_work(ihost->workq, &conn->xmitwork);
+	}
 }
 EXPORT_SYMBOL_GPL(iscsi_conn_queue_work);
 
@@ -2627,7 +2633,7 @@ struct Scsi_Host *iscsi_host_alloc(struct scsi_host_template *sht,
 	if (xmit_can_sleep) {
 		snprintf(ihost->workq_name, sizeof(ihost->workq_name),
 			"iscsi_q_%d", shost->host_no);
-		ihost->workq = create_singlethread_workqueue(ihost->workq_name);
+		ihost->workq = create_singlethread_dynamic_workqueue(ihost->workq_name);
 		if (!ihost->workq)
 			goto free_host;
 	}
-- 
1.8.3.1


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1563991180-11532-3-git-send-email-yebiaoxiang%40huawei.com.
