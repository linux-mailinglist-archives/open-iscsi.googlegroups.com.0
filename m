Return-Path: <open-iscsi+bncBDTZTRGMXIFBBTXU7H6QKGQER4QGQSY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id E17812C430A
	for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 16:37:51 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id q8sf1435710otk.6
        for <lists+open-iscsi@lfdr.de>; Wed, 25 Nov 2020 07:37:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606318670; cv=pass;
        d=google.com; s=arc-20160816;
        b=qLyBr/NdNOIeFPRVYMt3nlwbO7Sx6RqsICrkmzIpCAAhdwudufrcNItywS+Cg3x8UZ
         ZHca4RIborGTclD74qAFypT3u2AtXc2t0dyvzxDWxw+Ex/rk8Zu60bub9hAuNkYQeaFR
         JdSQClAHwMdIAxWuK7+98bTccoQH9UlU1BuRpfb2NwQf0VLANO6v52lBg6YdO/DXy1vK
         f5YO22ch49NW07j435t8HosSBOh/uyqH0DzGinBgr1JJ5uJuehP0KeMOhWlzBa5v+hU6
         lDWjQ2Ms8VuN9zwzcbDX6PJv4UT3cprAmGNBrXBbOissOdP0IbTYYgyMW2PtphOBQWJK
         tlNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ucj/4XwFcq/4W3QGUn0y0uF5huPX41HQ24HGzdzafg8=;
        b=oWRjBsx4N2wedOQEkrwaij6mS/GKNnbTCYFBwBKOSj/QVMwWZcgm5n1Eoa1moYZy8q
         bstMpTX0HHsflBp5LIx/PbV1jtogZZeBkQSkmcea+WYhSEDz4W7S2xCGGKrzSY3d/5zt
         m5JZHGrvLtBNoQkdYqU76997C+mIX6e+2NJY3rwdUvB3+EcsH9u08sG06Eiaa2T1mvV8
         GhQibGHEL6XYnfink3wzQuG8gUdOIL9ur/TZFJvfRNcIlKhqrIdd1o0/XF9L4NupPhEf
         5qBxIbqG3ZqGH+e/ZeDhRwUUV0dAeHGH+YVa7UAKIwiFUmTdtqSQWIJbAMQ/OnlaGqmQ
         XKQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ba71pU+t;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ucj/4XwFcq/4W3QGUn0y0uF5huPX41HQ24HGzdzafg8=;
        b=Nx+7XtloFEaMet+3gUwtBh6g1UR46CflOxcw+vM0HzqCVSy8dt5+YxNRGlapoetXTk
         SMCWIU3iVdnleZxeq91QFRMNHBE9G40LwD6ZZKqXLUPUpR8xFBLlD/aeZZhZyfFDG/6U
         6/1OdXhYI6ZrwlhBw33uZv6/SiUknmOYqzgedpQCxSUBaqtZ2bMOxbh9444gEDP+odGD
         QQaXKjnIW4yRvKJSXhzVp74jULYTTPJ5EGP+PjEiztNth0v/k84I5Oa0Jv2jzMBka7FL
         vE0GXNvu2iqfJaU+wF5FP4MLnKoZzIdJXQ0fzslKrsxO0cFBvzZpwKR6Kg7e95LCsVBa
         YLiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ucj/4XwFcq/4W3QGUn0y0uF5huPX41HQ24HGzdzafg8=;
        b=UV3AV5btWBc+HUO/WNnmKlNmE4RgqQdN5zHsQ3mCPK0yz+agu5WEaQ4SWwhlC5JPRJ
         UOjWH4vXGQTTYeHE1PpO5ntCsH8j2mgkvCqHK+1+u9c0Hhl/rdzlCy2zkPln5SHfIhIe
         53AGlao69kidHMzTyG6CAyHCdj9miKGkGWlOasdnbbRKLzqO56We4oWf+cq/sijYsTBV
         prGolmX0ndMVZwki3Wa0I/nqT48RupCWzOerzBi9lu5QEgQCM0hpMhmgOR8KyKDY/2Ag
         tDddb5hygN5D3mb2QdPfMByFIReQsbRukjXqplAqyLSC34H1oZIYceWELNjomUX7J4cf
         6g9Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531PYX4PPMbgCCQEaQu7HbBADP35qjOEKuxU/EqpIQVaIyZVTqAt
	P2DTpOmVToJzkrlcGTc48Tc=
X-Google-Smtp-Source: ABdhPJxbIe8Lkntqve6LNc4rxe3ypOiBcsYYbBEQxxm/W+poyjQaHbmR+8SLOS8vKz4NX/PegAm7qQ==
X-Received: by 2002:a05:6820:54c:: with SMTP id n12mr3141703ooj.79.1606318670799;
        Wed, 25 Nov 2020 07:37:50 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:4fd0:: with SMTP id d199ls657372oib.5.gmail; Wed, 25 Nov
 2020 07:37:50 -0800 (PST)
X-Received: by 2002:aca:6106:: with SMTP id v6mr2603413oib.158.1606318670359;
        Wed, 25 Nov 2020 07:37:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606318670; cv=none;
        d=google.com; s=arc-20160816;
        b=HfJu3wO35lMPDey2z/cEDpK70NZb3kfSfGa2fd8JwV4qPAIhvOEJmy7IY8xlx5ZzLq
         1rCHFsOUYvAzsGQ1CRkD2fikoNmF6LC1XILqtypbu2VrO41Nmos8zJKtS8tuZNM8Sonu
         zSsug+7Fco5wadkKwM6h+wZuRS8erMB4+aSVqal2yxp0L88IzMnz62j5p7d+W3201N58
         Z+pf+OFVbIpbiDwoGTKz1rmYUrKDXrX4OnHsX001KrBAuWcmrWOnMEvOICQH5rrv05IY
         gwVLkc8sjvP1OAzJ8urgT1gvDgz9f9AAu9vBjspqrw1N5P2RNOkSzOii0toPw3rCbbHx
         8dPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VYVeoT7sUSEtlNtCJO1Hfi420wPf4mT0DGJ2OCABTM8=;
        b=qpljn+3GSyThCZ64rx+MaIqpbDHhaZsksE9eBefm4k43KxyFXJ4NXIccm8+bdV3WuT
         kXTZg+tMHudT38YHqdlfcvtS9UjP+6FU50cD9zyqQMYA159NceOuHQ0qQJp/k43T0gtt
         bDMfx/Hp3ObWeKdPNhsSrKQ7IXHo+YSozLOdJBwdmAD7VEbVeML5Jmv2UcFTL7VhTR6/
         5OuuS9XPSJEAgRcPzoytfvISn6nfQrMfCD/isxDs9V7vlilv4ztdYH77oLDO1hprXDPX
         MVOJK3gHBwyP3SAZD3FXmDE6dpgxafYM7Z3nH0kpuSmaTTVdPjy8pA/XP7lEEGVfzeOE
         /gaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ba71pU+t;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k50si56087otc.0.2020.11.25.07.37.50
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:37:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5292E221F9;
	Wed, 25 Nov 2020 15:37:48 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Lee Duncan <lduncan@suse.com>,
	Mike Christie <michael.christie@oracle.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 10/12] scsi: libiscsi: Fix NOP race condition
Date: Wed, 25 Nov 2020 10:37:32 -0500
Message-Id: <20201125153734.810826-10-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201125153734.810826-1-sashal@kernel.org>
References: <20201125153734.810826-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ba71pU+t;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

[ Upstream commit fe0a8a95e7134d0b44cd407bc0085b9ba8d8fe31 ]

iSCSI NOPs are sometimes "lost", mistakenly sent to the user-land iscsid
daemon instead of handled in the kernel, as they should be, resulting in a
message from the daemon like:

  iscsid: Got nop in, but kernel supports nop handling.

This can occur because of the new forward- and back-locks, and the fact
that an iSCSI NOP response can occur before processing of the NOP send is
complete. This can result in "conn->ping_task" being NULL in
iscsi_nop_out_rsp(), when the pointer is actually in the process of being
set.

To work around this, we add a new state to the "ping_task" pointer. In
addition to NULL (not assigned) and a pointer (assigned), we add the state
"being set", which is signaled with an INVALID pointer (using "-1").

Link: https://lore.kernel.org/r/20201106193317.16993-1-leeman.duncan@gmail.com
Reviewed-by: Mike Christie <michael.christie@oracle.com>
Signed-off-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/libiscsi.c | 23 +++++++++++++++--------
 include/scsi/libiscsi.h |  3 +++
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
index 662df16b07a40..f7e1af90849b3 100644
--- a/drivers/scsi/libiscsi.c
+++ b/drivers/scsi/libiscsi.c
@@ -571,8 +571,8 @@ static void iscsi_complete_task(struct iscsi_task *task, int state)
 	if (conn->task == task)
 		conn->task = NULL;
 
-	if (conn->ping_task == task)
-		conn->ping_task = NULL;
+	if (READ_ONCE(conn->ping_task) == task)
+		WRITE_ONCE(conn->ping_task, NULL);
 
 	/* release get from queueing */
 	__iscsi_put_task(task);
@@ -781,6 +781,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
 						   task->conn->session->age);
 	}
 
+	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
+		WRITE_ONCE(conn->ping_task, task);
+
 	if (!ihost->workq) {
 		if (iscsi_prep_mgmt_task(conn, task))
 			goto free_task;
@@ -988,8 +991,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
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
@@ -1004,11 +1010,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
 
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
 
@@ -1021,7 +1028,7 @@ static int iscsi_nop_out_rsp(struct iscsi_task *task,
 	struct iscsi_conn *conn = task->conn;
 	int rc = 0;
 
-	if (conn->ping_task != task) {
+	if (READ_ONCE(conn->ping_task) != task) {
 		/*
 		 * If this is not in response to one of our
 		 * nops then it must be from userspace.
@@ -1961,7 +1968,7 @@ static void iscsi_start_tx(struct iscsi_conn *conn)
  */
 static int iscsi_has_ping_timed_out(struct iscsi_conn *conn)
 {
-	if (conn->ping_task &&
+	if (READ_ONCE(conn->ping_task) &&
 	    time_before_eq(conn->last_recv + (conn->recv_timeout * HZ) +
 			   (conn->ping_timeout * HZ), jiffies))
 		return 1;
@@ -2096,7 +2103,7 @@ enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
 	 * Checking the transport already or nop from a cmd timeout still
 	 * running
 	 */
-	if (conn->ping_task) {
+	if (READ_ONCE(conn->ping_task)) {
 		task->have_checked_conn = true;
 		rc = BLK_EH_RESET_TIMER;
 		goto done;
diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
index c9bd935f4fd1c..1ee0f30ae190b 100644
--- a/include/scsi/libiscsi.h
+++ b/include/scsi/libiscsi.h
@@ -145,6 +145,9 @@ struct iscsi_task {
 	void			*dd_data;	/* driver/transport data */
 };
 
+/* invalid scsi_task pointer */
+#define	INVALID_SCSI_TASK	(struct iscsi_task *)-1l
+
 static inline int iscsi_task_has_unsol_data(struct iscsi_task *task)
 {
 	return task->unsol_r2t.data_length > task->unsol_r2t.sent;
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201125153734.810826-10-sashal%40kernel.org.
