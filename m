Return-Path: <open-iscsi+bncBCX5F3PXZAIRBPPG335QKGQE7VFWU6I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA1B281EE6
	for <lists+open-iscsi@lfdr.de>; Sat,  3 Oct 2020 01:09:50 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id p17sf1414471ooe.22
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Oct 2020 16:09:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601680189; cv=pass;
        d=google.com; s=arc-20160816;
        b=fibnSkXs9Hj7AmkhCN7rePM/cGmDdUn+DAGnJoarFvZ7h5auW5A192iSL8HgrTedML
         2U8qCy7JHYcIuSygLX2xOoSr5cc1flVxIjKtCL47ITzKGWc5SHhFUY5QsewEJyN9iiVg
         25Z8tlGji7IXKqJ9SwqGuNKWuA5n/wcc7jihN31TTUvcEBNxVMgu6MH7a66cYua+hvp6
         VZ3Y5uXbm17ouFSk8B266bXJ7T+y/htlH+TfIru8LlNkDsqAJDTi1xCgEc6p/7aapvma
         CajBrNVmzmasP/io5FvhiMK3V+BLFl3IVynit5He81c7MK8GY0QOH7X+hdILSS6vWA3g
         K5KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Cze0KykG49zmNJTyqUCBOI12INAZqFHQYSMoUU7A0pc=;
        b=OvzJ4wuPZ2aFyGcG3P6dWGA52qIioV4EJH3/TFLIz2m7LYNO7d2+WnPuL1/l9sPDL8
         2I6pHJRJUABf+uLihlXnAs5LiaiAKybVAL2IQulHoBt0wS4aJkNYQOn1Tz9lo/Ru4rnM
         rVGcz35SQvCgbr0gTDj6PnJ2Na0826AQBuGqlay41PJcOypcz19Fva1yTpGbbGpuGNiK
         xRLYBUkay6I68LMBwk7RVDMdJB1QjIO1fbRanDurIspR52Ibph20MwOYs9YYh9aoyQTZ
         4BN2EdNmZn0Yoqp//os9dI4bUsu2q5D1bvzekdLiMT61mMYQaasCHGCFQez+zWGP2G5F
         fzjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OrlsG6iY;
       spf=pass (google.com: domain of mark.mielke@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=mark.mielke@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cze0KykG49zmNJTyqUCBOI12INAZqFHQYSMoUU7A0pc=;
        b=PzZRJoiohD+lcMr4CjDSvnG3fkrxbja+F6n0i1p4eTjjN+M1I+IAPL2R1OIK4GdBfY
         F0+YFqKBf2+8cmaowdHItI0VQmc5ti3XADtBtTUudaXKMmv5j1M2oijYIfjGVUojK0gU
         +yUbq1LodgD6fpVetx4RF0x2RNeQUkda1qM8i8azqcdC8AFK5TrFQUdrQt5S+TmbNrll
         Rp6OND7qis5LqAuwgSlHSuBArYhSebRZv0ZWScZjZRQUqphb8Z6qeR/vKSVrEyoIvg8Z
         W32MTj0+3EYXWgT6+omKaMWeicwYm4GkTCxSYqptNZcjd+RUc6/4lhdo/fGvLMVRmb4y
         PZeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Cze0KykG49zmNJTyqUCBOI12INAZqFHQYSMoUU7A0pc=;
        b=IwZX4vwixJxXyeEtWzIhJn2bMhe0xzL36BZTULljF17FwjK2Y6Od8JZykBOOPl0q1k
         ippO3Rin4zRcElthkYujA1q/ou5gZO8MpH8BtEE1q1BGh9QRHfp0mdDPTDTqMoSr/p/0
         rDVScAhNO7/cHF5iXrVCx9NcchjddjgNfV1m5DoFpKU/o9K6ZB2oBopo2TpzBY7mp8Xo
         6zZlwtNyOX3d7SrwJqYTLINk4uxyLMVxrQSNmM0UklhBMOnshI3eyrs2D/XPOjtxyV4U
         x4NGaKiPsOcuG3ZKteOsBSiWuLllbn/X0sW0yGOdc2jA64yiF1oSVy/DTTAdZ5yAdBgK
         ixWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Cze0KykG49zmNJTyqUCBOI12INAZqFHQYSMoUU7A0pc=;
        b=nUjPSWKoc4geit6heHLgEnmBpKLtuXQ0LFXpUyAc+EIGgPBUy2dUvG1MMIsjH9vstD
         ZDn1LWTCEOOPb/m6ZVMzBA5iUZZr8cueO0j3xYZKjJg5/jr7qKs+RMoEVz9cc3csOBBu
         sdq9iWV+9EUqK0sqXX4jyXsafqdbB4JUzi9gGYl2GMn0FELwPNo38NYhvFqNxyCkmmD+
         VbIu1CN6vNsbYOkVsean11ZSZGxKUaSJZXGnTqruiUO0rA51+e91mBFEGaMl2p03yQ8T
         uoN/6B+DATK3lf5Ptsf7FIaZ2vCdbG3FULjwF7mvHWzvv3bkFT+y5jPk8IOhAJyRgCE+
         Hf8w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530dw7tm1A8Kd5YNasXTZudbAOSy/K+zofoTyFW40aDTJDCeCvqE
	s0WL65rcFiOCU7iAQxY7FqM=
X-Google-Smtp-Source: ABdhPJxv+TkU6EwfvICVHwwyztkFananHVGytO3kiqpAkzYNyKXlgk/o8UGHp7HDUWG53PoDBtvCHA==
X-Received: by 2002:a4a:9bde:: with SMTP id b30mr3660378ook.82.1601680189317;
        Fri, 02 Oct 2020 16:09:49 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:2208:: with SMTP id b8ls703856oic.9.gmail; Fri, 02 Oct
 2020 16:09:49 -0700 (PDT)
X-Received: by 2002:aca:c0d6:: with SMTP id q205mr2399253oif.46.1601680189013;
        Fri, 02 Oct 2020 16:09:49 -0700 (PDT)
Received: by 2002:aca:3009:0:b029:d2:f73a:5043 with SMTP id w9-20020aca30090000b02900d2f73a5043msoiw;
        Sun, 27 Sep 2020 21:34:34 -0700 (PDT)
X-Received: by 2002:a9d:185:: with SMTP id e5mr7864337ote.135.1601267673793;
        Sun, 27 Sep 2020 21:34:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601267673; cv=none;
        d=google.com; s=arc-20160816;
        b=rXizzz+VqSM7VcmjWCl9OhzE2SSbdn+3ur/qmxvhIV5ff7XG0jvjVVkyENWQ+g08HX
         r7suW2E0Zc1een5yG97FMSh//S53LNbpwehvjL9L/HGeIa8+7J08eGZlUFXGtBLrXWk2
         9/Mk8wnRF1Q/PmVyrbA9sD3QLhFcKMK7bc0AM2vbu4DXvoDZvyTGlRNC4mkYLfnB7VXf
         QQYsQ8SLAlHA7WyLdspccVxP94SWB2mbk9OSRUgQ3UFJAMEjkaKJbJKHwRS4d9HEG/kP
         xZFENYeVjKuSBOR3KurvGFyq1vEOpnZujgDhiRti3y3AEttXNHa6pze+CfmFzTF+Ql40
         U0/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ConN5YtggiLZaASBU/xhEJXmwHgM4GQ65dyhnJrPmKk=;
        b=KZl1NC0SZwWR+1MsERGL3kBfcDmdOslWwBaIyqlsDL4X5gy5KJGqDl3sSzGzHWrzO6
         ZTl9Uo8ZchKWwoP7zNs5AevJrgUFIP7I5WcSk2R0l6qOSQ8ZOxq/oofe2GdrmiVItpCM
         oWtDss0gcuFY2WcM57pNt3jRICohTeThCJWUEeEa+fpLao3lE61QF8y4e1UGhtCHmxOc
         /Yh9eN09/lamQJBd5Xlh/obZixb95eCgHDdhKmjJLQFjGw6y0MO3tM2F77zj9xJwQpw+
         IV+O4hVAsQ0LlHG0pMyeUtgY8NiYuyTDHSbyhTHJAxYADUBj5A2WvWkoAeIoJBp4SW5B
         Xtqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OrlsG6iY;
       spf=pass (google.com: domain of mark.mielke@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=mark.mielke@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id d22si531461ooj.1.2020.09.27.21.34.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Sep 2020 21:34:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.mielke@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id c18so7214985qtw.5
        for <open-iscsi@googlegroups.com>; Sun, 27 Sep 2020 21:34:33 -0700 (PDT)
X-Received: by 2002:ac8:39c5:: with SMTP id v63mr10887654qte.12.1601267673265;
        Sun, 27 Sep 2020 21:34:33 -0700 (PDT)
Received: from andromeda.markmielke.com ([2607:fea8:c260:8de::d020])
        by smtp.gmail.com with ESMTPSA id 202sm8427085qkg.56.2020.09.27.21.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2020 21:34:32 -0700 (PDT)
From: Mark Mielke <mark.mielke@gmail.com>
To: Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	Mark Mielke <mark.mielke@gmail.com>,
	Marc Dionne <marc.c.dionne@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] iscsi: iscsi_tcp: Avoid holding spinlock while calling getpeername
Date: Mon, 28 Sep 2020 00:33:29 -0400
Message-Id: <20200928043329.606781-1-mark.mielke@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Original-Sender: mark.mielke@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OrlsG6iY;       spf=pass
 (google.com: domain of mark.mielke@gmail.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=mark.mielke@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
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

Kernel may fail to boot or devices may fail to come up when
initializing iscsi_tcp devices starting with Linux 5.8.

Marc Dionne identified the cause in RHBZ#1877345.

Commit a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param
libiscsi function") introduced getpeername() within the session spinlock.

Commit 1b66d253610c ("bpf: Add get{peer, sock}name attach types for
sock_addr") introduced BPF_CGROUP_RUN_SA_PROG_LOCK() within getpeername,
which acquires a mutex and when used from iscsi_tcp devices can now lead
to "BUG: scheduling while atomic:" and subsequent damage.

This commit ensures that the spinlock is released before calling
getpeername() or getsockname(). sock_hold() and sock_put() are
used to ensure that the socket reference is preserved until after
the getpeername() or getsockname() complete.

Reported-by: Marc Dionne <marc.c.dionne@gmail.com>
Link: https://bugzilla.redhat.com/show_bug.cgi?id=1877345
Link: https://lkml.org/lkml/2020/7/28/1085
Link: https://lkml.org/lkml/2020/8/31/459
Fixes: a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param libiscsi function")
Fixes: 1b66d253610c ("bpf: Add get{peer, sock}name attach types for sock_addr")
Signed-off-by: Mark Mielke <mark.mielke@gmail.com>
Cc: stable@vger.kernel.org
---
 drivers/scsi/iscsi_tcp.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index b5dd1caae5e9..d10efb66cf19 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -736,6 +736,7 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
 	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 	struct sockaddr_in6 addr;
+	struct socket *sock;
 	int rc;
 
 	switch(param) {
@@ -747,13 +748,17 @@ static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
 			spin_unlock_bh(&conn->session->frwd_lock);
 			return -ENOTCONN;
 		}
+		sock = tcp_sw_conn->sock;
+		sock_hold(sock->sk);
+		spin_unlock_bh(&conn->session->frwd_lock);
+
 		if (param == ISCSI_PARAM_LOCAL_PORT)
-			rc = kernel_getsockname(tcp_sw_conn->sock,
+			rc = kernel_getsockname(sock,
 						(struct sockaddr *)&addr);
 		else
-			rc = kernel_getpeername(tcp_sw_conn->sock,
+			rc = kernel_getpeername(sock,
 						(struct sockaddr *)&addr);
-		spin_unlock_bh(&conn->session->frwd_lock);
+		sock_put(sock->sk);
 		if (rc < 0)
 			return rc;
 
@@ -775,6 +780,7 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 	struct iscsi_tcp_conn *tcp_conn;
 	struct iscsi_sw_tcp_conn *tcp_sw_conn;
 	struct sockaddr_in6 addr;
+	struct socket *sock;
 	int rc;
 
 	switch (param) {
@@ -789,16 +795,18 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 			return -ENOTCONN;
 		}
 		tcp_conn = conn->dd_data;
-
 		tcp_sw_conn = tcp_conn->dd_data;
-		if (!tcp_sw_conn->sock) {
+		sock = tcp_sw_conn->sock;
+		if (!sock) {
 			spin_unlock_bh(&session->frwd_lock);
 			return -ENOTCONN;
 		}
+		sock_hold(sock->sk);
+		spin_unlock_bh(&session->frwd_lock);
 
-		rc = kernel_getsockname(tcp_sw_conn->sock,
+		rc = kernel_getsockname(sock,
 					(struct sockaddr *)&addr);
-		spin_unlock_bh(&session->frwd_lock);
+		sock_put(sock->sk);
 		if (rc < 0)
 			return rc;
 
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200928043329.606781-1-mark.mielke%40gmail.com.
