Return-Path: <open-iscsi+bncBDTZTRGMXIFBB2H7VL3QKGQEM5U5XWI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E471FDBAC
	for <lists+open-iscsi@lfdr.de>; Thu, 18 Jun 2020 03:14:18 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id f18sf2930732qvr.22
        for <lists+open-iscsi@lfdr.de>; Wed, 17 Jun 2020 18:14:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442856; cv=pass;
        d=google.com; s=arc-20160816;
        b=WxKWVEPaXaXY2uTXqo5Gt+K1vuhR8Qoqba9BVV0jve2oJ3zYyl3LpVMgqORVJGcnpZ
         SwuOurMTlcW1iDwgnDr/Un735YjEIUZ+4076XcSzTsn2X0qUZ61df1j8734RTb1f7Z5E
         7z83HdOLbe1b66E5iYotjgLHNXdJpgOUD+SbvhT1L0avQIURBz2Jj0byc1q5O05VH0Mq
         4dlwKdoCrJ0PcSFMDHF0r3yiVlBldDRCQGH5KeXOeZyfoF7d+w4uVuobf4/G41xHj6x0
         1UoiRoA4JkFBkWj6XiWjIgV4X5dXHrGFSCsME4BHv7JhnGVwC4N9CXlo4DJVst8hzidb
         ulgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=XNFZfY8gXV8yY4xtWLiPqBhOBP1RRqOZ2tYtc9UJGBs=;
        b=ZEFCuWPuq2vncHD9QlEwTeNMzdCYHLXWUIecSnjSu8rcOmqRuNor6wi/qAOehcM2QY
         KVv1iDGw6QfsrmR29GFMgGhhDqSvSrRR+WSL6Jw8JMTGQzD77x0NNXOZNsYvPAuBXcZv
         M8B1xBXW73EPCech9jmLZYTT7PfdILcxl5sKBEL7lq4KiY/G7Kp21j+y5k//VEfP9k57
         rJGSnfizN1bRdJoraNY43rHGYSJomylivxcRP4rW7GuS8p3atDvUz8Im4MrKvcITIkT1
         X9G7vXKj9paf8f2Ucdqz+8mtOJs0WHzZBYwASxFUAlxzrF/PdDUUEkHHSaSIbUVPyGyg
         hzgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=N7yXqxZB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XNFZfY8gXV8yY4xtWLiPqBhOBP1RRqOZ2tYtc9UJGBs=;
        b=ZbXdBSNHqaDfSzDsmMtQFSYT14t0M9+3PszB/xxD1L2CGAr/4wIFEy4RIBzQvd+x41
         Y3vOoGLzhojcnZlTs4hJxU2DeZno21tGrU79U1JxYjP7+NGVaHX/TLqzB9zrccTMu/iW
         ySdkcErkTqoLk3F+T4E6LqKEcH4a0C5unvtSPeam7RA5IImZmxAh7AcmuYRJX98qf41k
         SSHXs6nedlCaEeUwYxM3+VHYVK++xZO9bZqXmPesGmjPgXUeTLw2bFPRiLYvH9vbo9Da
         NF36Oqq8QRgTBC3xL00faLRTOFU7+BIA9MuvkXiQWiZx8Jx0fSpInCWZoYL4hSxZnZo2
         SW7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XNFZfY8gXV8yY4xtWLiPqBhOBP1RRqOZ2tYtc9UJGBs=;
        b=ipF6P7MhLEy9+oihsNYSV+QSFzRfy/eUzE6rcg4sKR3MEX4mtnN+1y2qdm+TRJI9Bx
         YQnAaG3HSp6HsW0u+UAbaM+uWdwJtRE7/M67uPj/Ddn25NV7qGC0k7MCFcVPTU+a9dgt
         9Sa1/9vdPXqKU3xSkLCKad5GSyCRaAZkh976vlz/xVn89gvKljPr0HFZO0iEXxly4egf
         XhOV3CoPzlJqxCxIkoNreRb2pRjcM6AGt9ctqApnUV0f3jsR+HQZz0TGaz2c9Mhpp617
         n0wgoVg800kktfS9lB3uvmrLkgjIY5L+uaewrMYPxQX20yRcIiQNrFATJ6BKzir5bnKs
         BAoQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531t8vQbux5aodvF+okqgJ4fqlnxzVa+LcGQKpYNOI84JqdDamFj
	e6Nx7OEnHXhx/q7dGJY4x2Y=
X-Google-Smtp-Source: ABdhPJy23zsBGH/yNxR3EbnHYEBzr26wB5wDnLXI1r3Hvho8cOwiAb3/pww9vebtcdHpiiIFEDLfBA==
X-Received: by 2002:a05:620a:142a:: with SMTP id k10mr1498380qkj.182.1592442856562;
        Wed, 17 Jun 2020 18:14:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a37:95c7:: with SMTP id x190ls1932068qkd.10.gmail; Wed, 17
 Jun 2020 18:14:16 -0700 (PDT)
X-Received: by 2002:a05:620a:1099:: with SMTP id g25mr1458575qkk.302.1592442856228;
        Wed, 17 Jun 2020 18:14:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442856; cv=none;
        d=google.com; s=arc-20160816;
        b=UQHQu41whm0Vj0pgWHqgoVkQGmHdnpHUjcldoJQQdUQuFYun/GPiJL+4w/rprhTzuQ
         AmjUQF8A5clngViG+lVQEA3irZzDhEq1QBI11bFZZOMDMzquZyhK9uT7YYGUEqxvuyNA
         5VzEAO9xm3voamwVvppsxwzaxLR8vhFNhj1y7C1yqHWtLkhw9JSgXvVTVk4+xnuYHid8
         REtc9fEdO85aNibKDSXpE5sFoSsvzZ+9TM4iC/2nnFbw7VRezPPr6Wffw9yjymREIrXv
         60EeN+0QsCS4NU9PuduO75znVwE4ICF5WaSVjJ8rpLJb9/m1yetM87jo5FJ7Kx/UNK6H
         xL+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sDZJa/5DYOnjO1qFZaKQixy7iTHkRzOKS7i32wqyE8I=;
        b=IforFT5LFs6syqbQM1tLzdbFlYsgMBTrtjFi3sHKPXX0ekEe5LbZpRcsTGkTdaMWt3
         hytZUTR3fnTtkcSGOQOVUKaI2zmmfUmV7vGJjyl/5gpaJ8y9Zqg5DGWcJNDuEgdBOfEM
         cvRVbXoiBuZZBNhHC+fcbSHR9h2a46gn1F8tnrhqaKdEO+msB3M1RSfujMVGCSIg88Nw
         T4tw4IsgzL+i5DxCkKmAW6FB8UGGJesspx5OUU1Gcdl5kCtdQR7Ev5VtiwCUNvA6YRCH
         eWJLWca/ZDZS88VunSKIS29hTHwf6nKf77LWz1Id1trhXHzo0f8VzM+/mrWU/viHWim1
         SW1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=N7yXqxZB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v199si72049qka.5.2020.06.17.18.14.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:14:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 51E0E21D90;
	Thu, 18 Jun 2020 01:14:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Gabriel Krisman Bertazi <krisman@collabora.com>,
	Khazhismel Kumykov <khazhy@google.com>,
	Lee Duncan <lduncan@suse.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 285/388] scsi: iscsi: Fix deadlock on recovery path during GFP_IO reclaim
Date: Wed, 17 Jun 2020 21:06:22 -0400
Message-Id: <20200618010805.600873-285-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=N7yXqxZB;       spf=pass
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

From: Gabriel Krisman Bertazi <krisman@collabora.com>

[ Upstream commit 7e7cd796f2776d055351d80328f45633bbb0aae5 ]

iSCSI suffers from a deadlock in case a management command submitted via
the netlink socket sleeps on an allocation while holding the rx_queue_mutex
if that allocation causes a memory reclaim that writebacks to a failed
iSCSI device.  The recovery procedure can never make progress to recover
the failed disk or abort outstanding IO operations to complete the reclaim
(since rx_queue_mutex is locked), thus locking the system.

Nevertheless, just marking all allocations under rx_queue_mutex as GFP_NOIO
(or locking the userspace process with something like PF_MEMALLOC_NOIO) is
not enough, since the iSCSI command code relies on other subsystems that
try to grab locked mutexes, whose threads are GFP_IO, leading to the same
deadlock. One instance where this situation can be observed is in the
backtraces below, stitched from multiple bugs reports, involving the kobj
uevent sent when a session is created.

The root of the problem is not the fact that iSCSI does GFP_IO allocations,
that is acceptable. The actual problem is that rx_queue_mutex has a very
large granularity, covering every unrelated netlink command execution at
the same time as the error recovery path.

The proposed fix leverages the recently added mechanism to stop failed
connections from the kernel, by enabling it to execute even though a
management command from the netlink socket is being run (rx_queue_mutex is
held), provided that the command is known to be safe.  It splits the
rx_queue_mutex in two mutexes, one protecting from concurrent command
execution from the netlink socket, and one protecting stop_conn from racing
with other connection management operations that might conflict with it.

It is not very pretty, but it is the simplest way to resolve the deadlock.
I considered making it a lock per connection, but some external mutex would
still be needed to deal with iscsi_if_destroy_conn.

The patch was tested by forcing a memory shrinker (unrelated, but used
bufio/dm-verity) to reclaim iSCSI pages every time
ISCSI_UEVENT_CREATE_SESSION happens, which is reasonable to simulate
reclaims that might happen with GFP_KERNEL on that path.  Then, a faulty
hung target causes a connection to fail during intensive IO, at the same
time a new session is added by iscsid.

The following stacktraces are stiches from several bug reports, showing a
case where the deadlock can happen.

 iSCSI-write
         holding: rx_queue_mutex
         waiting: uevent_sock_mutex

         kobject_uevent_env+0x1bd/0x419
         kobject_uevent+0xb/0xd
         device_add+0x48a/0x678
         scsi_add_host_with_dma+0xc5/0x22d
         iscsi_host_add+0x53/0x55
         iscsi_sw_tcp_session_create+0xa6/0x129
         iscsi_if_rx+0x100/0x1247
         netlink_unicast+0x213/0x4f0
         netlink_sendmsg+0x230/0x3c0

 iscsi_fail iscsi_conn_failure
         waiting: rx_queue_mutex

         schedule_preempt_disabled+0x325/0x734
         __mutex_lock_slowpath+0x18b/0x230
         mutex_lock+0x22/0x40
         iscsi_conn_failure+0x42/0x149
         worker_thread+0x24a/0xbc0

 EventManager_
         holding: uevent_sock_mutex
         waiting: dm_bufio_client->lock

         dm_bufio_lock+0xe/0x10
         shrink+0x34/0xf7
         shrink_slab+0x177/0x5d0
         do_try_to_free_pages+0x129/0x470
         try_to_free_mem_cgroup_pages+0x14f/0x210
         memcg_kmem_newpage_charge+0xa6d/0x13b0
         __alloc_pages_nodemask+0x4a3/0x1a70
         fallback_alloc+0x1b2/0x36c
         __kmalloc_node_track_caller+0xb9/0x10d0
         __alloc_skb+0x83/0x2f0
         kobject_uevent_env+0x26b/0x419
         dm_kobject_uevent+0x70/0x79
         dev_suspend+0x1a9/0x1e7
         ctl_ioctl+0x3e9/0x411
         dm_ctl_ioctl+0x13/0x17
         do_vfs_ioctl+0xb3/0x460
         SyS_ioctl+0x5e/0x90

 MemcgReclaimerD"
         holding: dm_bufio_client->lock
         waiting: stuck io to finish (needs iscsi_fail thread to progress)

         schedule at ffffffffbd603618
         io_schedule at ffffffffbd603ba4
         do_io_schedule at ffffffffbdaf0d94
         __wait_on_bit at ffffffffbd6008a6
         out_of_line_wait_on_bit at ffffffffbd600960
         wait_on_bit.constprop.10 at ffffffffbdaf0f17
         __make_buffer_clean at ffffffffbdaf18ba
         __cleanup_old_buffer at ffffffffbdaf192f
         shrink at ffffffffbdaf19fd
         do_shrink_slab at ffffffffbd6ec000
         shrink_slab at ffffffffbd6ec24a
         do_try_to_free_pages at ffffffffbd6eda09
         try_to_free_mem_cgroup_pages at ffffffffbd6ede7e
         mem_cgroup_resize_limit at ffffffffbd7024c0
         mem_cgroup_write at ffffffffbd703149
         cgroup_file_write at ffffffffbd6d9c6e
         sys_write at ffffffffbd6662ea
         system_call_fastpath at ffffffffbdbc34a2

Link: https://lore.kernel.org/r/20200520022959.1912856-1-krisman@collabora.com
Reported-by: Khazhismel Kumykov <khazhy@google.com>
Reviewed-by: Lee Duncan <lduncan@suse.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/scsi_transport_iscsi.c | 64 +++++++++++++++++++++--------
 1 file changed, 47 insertions(+), 17 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index b2a803c51288..ea6d498fa923 100644
--- a/drivers/scsi/scsi_transport_iscsi.c
+++ b/drivers/scsi/scsi_transport_iscsi.c
@@ -1616,6 +1616,12 @@ static DECLARE_TRANSPORT_CLASS(iscsi_connection_class,
 static struct sock *nls;
 static DEFINE_MUTEX(rx_queue_mutex);
 
+/*
+ * conn_mutex protects the {start,bind,stop,destroy}_conn from racing
+ * against the kernel stop_connection recovery mechanism
+ */
+static DEFINE_MUTEX(conn_mutex);
+
 static LIST_HEAD(sesslist);
 static LIST_HEAD(sessdestroylist);
 static DEFINE_SPINLOCK(sesslock);
@@ -2445,6 +2451,32 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
 }
 EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
 
+/*
+ * This can be called without the rx_queue_mutex, if invoked by the kernel
+ * stop work. But, in that case, it is guaranteed not to race with
+ * iscsi_destroy by conn_mutex.
+ */
+static void iscsi_if_stop_conn(struct iscsi_cls_conn *conn, int flag)
+{
+	/*
+	 * It is important that this path doesn't rely on
+	 * rx_queue_mutex, otherwise, a thread doing allocation on a
+	 * start_session/start_connection could sleep waiting on a
+	 * writeback to a failed iscsi device, that cannot be recovered
+	 * because the lock is held.  If we don't hold it here, the
+	 * kernel stop_conn_work_fn has a chance to stop the broken
+	 * session and resolve the allocation.
+	 *
+	 * Still, the user invoked .stop_conn() needs to be serialized
+	 * with stop_conn_work_fn by a private mutex.  Not pretty, but
+	 * it works.
+	 */
+	mutex_lock(&conn_mutex);
+	conn->transport->stop_conn(conn, flag);
+	mutex_unlock(&conn_mutex);
+
+}
+
 static void stop_conn_work_fn(struct work_struct *work)
 {
 	struct iscsi_cls_conn *conn, *tmp;
@@ -2463,30 +2495,17 @@ static void stop_conn_work_fn(struct work_struct *work)
 		uint32_t sid = iscsi_conn_get_sid(conn);
 		struct iscsi_cls_session *session;
 
-		mutex_lock(&rx_queue_mutex);
-
 		session = iscsi_session_lookup(sid);
 		if (session) {
 			if (system_state != SYSTEM_RUNNING) {
 				session->recovery_tmo = 0;
-				conn->transport->stop_conn(conn,
-							   STOP_CONN_TERM);
+				iscsi_if_stop_conn(conn, STOP_CONN_TERM);
 			} else {
-				conn->transport->stop_conn(conn,
-							   STOP_CONN_RECOVER);
+				iscsi_if_stop_conn(conn, STOP_CONN_RECOVER);
 			}
 		}
 
 		list_del_init(&conn->conn_list_err);
-
-		mutex_unlock(&rx_queue_mutex);
-
-		/* we don't want to hold rx_queue_mutex for too long,
-		 * for instance if many conns failed at the same time,
-		 * since this stall other iscsi maintenance operations.
-		 * Give other users a chance to proceed.
-		 */
-		cond_resched();
 	}
 }
 
@@ -2846,8 +2865,11 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
 	spin_unlock_irqrestore(&connlock, flags);
 
 	ISCSI_DBG_TRANS_CONN(conn, "Destroying transport conn\n");
+
+	mutex_lock(&conn_mutex);
 	if (transport->destroy_conn)
 		transport->destroy_conn(conn);
+	mutex_unlock(&conn_mutex);
 
 	return 0;
 }
@@ -3689,9 +3711,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 			break;
 		}
 
+		mutex_lock(&conn_mutex);
 		ev->r.retcode =	transport->bind_conn(session, conn,
 						ev->u.b_conn.transport_eph,
 						ev->u.b_conn.is_leading);
+		mutex_unlock(&conn_mutex);
+
 		if (ev->r.retcode || !transport->ep_connect)
 			break;
 
@@ -3713,9 +3738,11 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 	case ISCSI_UEVENT_START_CONN:
 		conn = iscsi_conn_lookup(ev->u.start_conn.sid, ev->u.start_conn.cid);
 		if (conn) {
+			mutex_lock(&conn_mutex);
 			ev->r.retcode = transport->start_conn(conn);
 			if (!ev->r.retcode)
 				conn->state = ISCSI_CONN_UP;
+			mutex_unlock(&conn_mutex);
 		}
 		else
 			err = -EINVAL;
@@ -3723,17 +3750,20 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 	case ISCSI_UEVENT_STOP_CONN:
 		conn = iscsi_conn_lookup(ev->u.stop_conn.sid, ev->u.stop_conn.cid);
 		if (conn)
-			transport->stop_conn(conn, ev->u.stop_conn.flag);
+			iscsi_if_stop_conn(conn, ev->u.stop_conn.flag);
 		else
 			err = -EINVAL;
 		break;
 	case ISCSI_UEVENT_SEND_PDU:
 		conn = iscsi_conn_lookup(ev->u.send_pdu.sid, ev->u.send_pdu.cid);
-		if (conn)
+		if (conn) {
+			mutex_lock(&conn_mutex);
 			ev->r.retcode =	transport->send_pdu(conn,
 				(struct iscsi_hdr*)((char*)ev + sizeof(*ev)),
 				(char*)ev + sizeof(*ev) + ev->u.send_pdu.hdr_size,
 				ev->u.send_pdu.data_size);
+			mutex_unlock(&conn_mutex);
+		}
 		else
 			err = -EINVAL;
 		break;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200618010805.600873-285-sashal%40kernel.org.
