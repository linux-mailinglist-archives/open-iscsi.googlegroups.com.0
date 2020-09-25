Return-Path: <open-iscsi+bncBD54HHNYIIIJL5FY7MCRUBBIUD3XC@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 844D82790F5
	for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 20:42:30 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id j75sf652833lfj.7
        for <lists+open-iscsi@lfdr.de>; Fri, 25 Sep 2020 11:42:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601059350; cv=pass;
        d=google.com; s=arc-20160816;
        b=h2m4wuqos6bhDanDiYcm9uuy+J3glfLzv7dtaULBLgRSAtlxtXoDriPuJNLAFWDGM1
         RQCWq53c1CeEXBj6GYmQacS5XmvOVnUrlAp2gxlVI82hYyCmY2MiSMbWuN6AWm+cZDn7
         AhqOzQefCmR6asAk+djpnI/yCOaRgk5Tpf70v/yLzcEg38x9l2vsGCGUc4l6www/MSOp
         hFr0DEdj4f2dZsAU5DKcVr3DhqQ4S4fwFsW+4vRD+fz3ZfxLRa/NjqOFWNPCCgTAacp1
         jarMC7UQTAr8Ll87KMm27mcVDsCUrLHVzLwhk/+UT4UaKtmTfV8dPfSK61xckrCHhZtw
         nT1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=gfG2xvkLqrK+UM77iGJFscz5k6um1G2SjaUNgtwlvJg=;
        b=XJGXIMwKhJcRi0s47gAimQVcYGKj9+ULsVxHtFDsAMa78kBOrv5mlt7W+8+CYFiSKU
         OrXc2sdTVCBJMEAfaF3kXuE/CYUpWqrtNOeDR5fvuOyuO1RqPp5JJUsMNCCMADhUrk4g
         ygsEJsR4+3QmNVptRn7ikw9w8zsNyoVI3V5Xr+BRCDjeZaBfrsEaU2jb3AmtHgyX73yT
         4DSrXDaYjB0cjF14KG3ZSiEqsEvAsaRRivyyAXC+WDzeBp6/gGW9O9rgHCtR58G7Phaj
         eti9mzD9ckC6vHe5J+ditis3FS+hlOJYjoSX1tEXOcCu98fWX4a1jr5FPL/Pr6ISnS4t
         5DqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=fA37onwK;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gfG2xvkLqrK+UM77iGJFscz5k6um1G2SjaUNgtwlvJg=;
        b=TCCu1U9NwTlRqdb9OwMmYo+XMY8mSvfQFQkwPIksIH8Uwvd7Kq7LuJl1x7zB5xUHIp
         M1CY4h/siU8sgxVvHVIFiwB54ozi3agjpYZeSVDCDtInH04vTdknJPkMh8DFwvFl6tLT
         v39tUK31PfY/E0NwRl2ekrMTw0a5ihzEqbPSwabsRX+KVt8KBqBysYMBy2U3BjDIlPgb
         LD2w3qzMcAA2FoRxC2k0h1jpea2vkghustWPfnqCYlb1Q7K8UQcX1LZ2dMzkFRbVEHm2
         BgHYrSpaDBmNku8ZiveQCxQbcg9Zaer2WJYUPuAaI6U3OTrFIUkb5W+/YS5oWpLVZ1fy
         d4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfG2xvkLqrK+UM77iGJFscz5k6um1G2SjaUNgtwlvJg=;
        b=d7MZf/3GzNBn8/F3aAyBtX0Zptg88Gf5AzE+IGrUeYezZsNW0TG73ldfkGVxcI6r9h
         0A5pnXsn4/wOlbY9kSUVJG+mqYa+MrnZQWtjuM4JJwaMtBx4EW3Qj9IYZXJ0F8U29NAf
         NW2j/yxGx4wFiCtiS3TVbz/CxJ3LGcV7y+nIoRw2tPFdJbG+glB1OXyDnNOaY82Mh6qT
         23sK3FCZYK4YZka5ory+rkXXwXlcGydvATQCyccpavRqOm38wvcqghqRJdFW2S6OLWOy
         DdTMkmrHyNT15zaGbUnAw52oQ5W0ZoxVA0szahWLu/C4nz1PFBNQTQiWNHC23ZFms5qc
         O2Nw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM53324fBAzp74IJtY66T9h5Ktt/tevQ8Gb397b3PvBVpfKtAf4+eW
	b/aSdxcaveLKEUNsun0cLLk=
X-Google-Smtp-Source: ABdhPJwM4J9S/S28ocPa+OYiqvkDCAdFfPkM9sHlJWjLa82+C1fbAz42sQDG/fDJoVwNO/6Sm/bSUA==
X-Received: by 2002:a19:2214:: with SMTP id i20mr74956lfi.252.1601059350072;
        Fri, 25 Sep 2020 11:42:30 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a2e:b0e9:: with SMTP id h9ls516234ljl.5.gmail; Fri, 25 Sep
 2020 11:42:29 -0700 (PDT)
X-Received: by 2002:a2e:2244:: with SMTP id i65mr1913241lji.185.1601059349017;
        Fri, 25 Sep 2020 11:42:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601059349; cv=none;
        d=google.com; s=arc-20160816;
        b=C7PpdJ1tilm69VTrXAGbCFWbETTZmlac+pu0p2t1Ay5+30A+G4Bk4PhV4voRaDYnfO
         eVMoywnK9ilc/490fcsB3SIMv30yddox5pGtawFGxwXoCIJtB4hE0EpVfc4z3ip2rBmD
         NBHAz3DWS9Dfqj3/My4nAk/Lc8zfj+5ZZ12zGCy8FmWYFapd7AhuYXmZa5N0cYTs/3zM
         +rqWP2f/o8ZwbtJbghEZvgZoI/cMujctYejlU2DADotHjoVfY/YubP0zi7ay7CP+u5bY
         rItNxc0MTjIdQ5Mip1MjJ0OySJvtPG2g//RDzLY+wTxwGbuJbDRXPhqzK/p+hZBwqPpo
         HLCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/pGAYici4c+A6XTgBrVu69JVBfczsTODgIOBNBt1/98=;
        b=UJDWNdBmSRfEwI9OfzO/iykZFNXU/0/QN3oNyM52XFHaX8kAKTYDt0YBiXBH0wzfk8
         3EBNhRwgkHFcKseFOsg2vNrKBl0UFRrw0fbE5Kgv0jgI/SDRfoxHjiAqvdAmpNb229lD
         7tFGEV/UHuj+f3mPyEs5mXZqk4nG6nwqRRxbQ+VzFSOiPGOkm9WLZSGNacU0RVqcDvTJ
         jwBJV0TtewvPKViTuEgJqtPeVp0sNDImc+Z3xrZnFjhHWSk1Ur/w7iFgQjpjWxIcIlhG
         R78+Tw6l/CNwCo8KO4h4A08KBEdFC8MeGSyF0KKLlZcI6trne7IzagduoNWsQU9v2x0H
         HOKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=fA37onwK;
       spf=pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=lduncan@suse.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id e1si120606ljg.6.2020.09.25.11.42.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 11:42:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 30F0DAD46;
	Fri, 25 Sep 2020 18:42:28 +0000 (UTC)
Received: by localhost (Postfix, from userid 1000)
	id 91F6D514D9B; Fri, 25 Sep 2020 11:42:26 -0700 (PDT)
From: <lduncan@suse.com>
To: linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	open-iscsi@googlegroups.com,
	martin.petersen@oracle.com,
	mchristi@redhat.com,
	hare@suse.com,
	Lee Duncan <lduncan@suse.com>
Subject: [PATCH v2 1/1] scsi: libiscsi: fix NOP race condition
Date: Fri, 25 Sep 2020 11:41:48 -0700
Message-Id: <02b452b2e33d0728091d27d44794934c134a803e.1601058301.git.lduncan@suse.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1601058301.git.lduncan@suse.com>
References: <cover.1601058301.git.lduncan@suse.com>
MIME-Version: 1.0
X-Original-Sender: lduncan@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=fA37onwK;       spf=pass
 (google.com: domain of lduncan@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=lduncan@suse.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=suse.com
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

From: Lee Duncan <lduncan@suse.com>

iSCSI NOPs are sometimes "lost", mistakenly sent to the
user-land iscsid daemon instead of handled in the kernel,
as they should be, resulting in a message from the daemon like:

> iscsid: Got nop in, but kernel supports nop handling.

This can occur because of the forward- and back-locks
in the kernel iSCSI code, and the fact that an iSCSI NOP
response can be processed before processing of the NOP send
is complete. This can result in "conn->ping_task" being NULL
in iscsi_nop_out_rsp(), when the pointer is actually in
the process of being set.

To work around this, we add a new state to the "ping_task"
pointer. In addition to NULL (not assigned) and a pointer
(assigned), we add the state "being set", which is signaled
with an INVALID pointer (using "-1").

Signed-off-by: Lee Duncan <lduncan@suse.com>
---
 drivers/scsi/libiscsi.c | 13 ++++++++++---
 include/scsi/libiscsi.h |  3 +++
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 1e9c3171fa9f..cade108c33b6 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -738,6 +738,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 						   task->conn->session->age);
 	}
 
+	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
+		WRITE_ONCE(conn->ping_task, task);
+
 	if (!ihost->workq) {
 		if (iscsi_prep_mgmt_task(conn, task))
 			goto free_task;
@@ -941,8 +944,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
         struct iscsi_nopout hdr;
 	struct iscsi_task *task;
 
-	if (!rhdr && conn->ping_task)
-		return -EINVAL;
+	if (!rhdr) {
+		if (READ_ONCE(conn->ping_task))
+			return -EINVAL;
+		WRITE_ONCE(conn->ping_task, INVALID_SCSI_TASK);
+	}
 
 	memset(&hdr, 0, sizeof(struct iscsi_nopout));
 	hdr.opcode = ISCSI_OP_NOOP_OUT | ISCSI_OP_IMMEDIATE;
@@ -957,11 +963,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
 
 	task = __iscsi_conn_send_pdu(conn, (struct iscsi_hdr *)&hdr, NULL, 0);
 	if (!task) {
+		if (!rhdr)
+			WRITE_ONCE(conn->ping_task, NULL);
 		iscsi_conn_printk(KERN_ERR, conn, "Could not send nopout\n");
 		return -EIO;
 	} else if (!rhdr) {
 		/* only track our nops */
-		conn->ping_task = task;
 		conn->last_ping = jiffies;
 	}
 
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index c25fb86ffae9..b3bbd10eb3f0 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -132,6 +132,9 @@ struct iscsi_task {
 	void			*dd_data;	/* driver/transport data */
 };
 
+/* invalid scsi_task pointer */
+#define	INVALID_SCSI_TASK	(struct iscsi_task *)-1l
+
 static inline int iscsi_task_has_unsol_data(struct iscsi_task *task)
 {
 	return task->unsol_r2t.data_length > task->unsol_r2t.sent;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/02b452b2e33d0728091d27d44794934c134a803e.1601058301.git.lduncan%40suse.com.
