Return-Path: <open-iscsi+bncBDA4VMEL3QNRBYPK2P2QKGQEBCX5HKA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id E24701CA359
	for <lists+open-iscsi@lfdr.de>; Fri,  8 May 2020 08:00:06 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id r5sf66968ljk.19
        for <lists+open-iscsi@lfdr.de>; Thu, 07 May 2020 23:00:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588917601; cv=pass;
        d=google.com; s=arc-20160816;
        b=wLe1zOWT+BkLlcGz45K5FOstQp0cM+ICVZFlphDV3StxSOIAhzRQT+U6/ehu/1IDOY
         G8QZOYDKb/jYVn2bm9e71rJr++8Z/Z4IEmHEod5l7AAGzwRIwpNBqG3xcZuvVW59R5IE
         YijSN2SCYvtsH7tVVT1DpvwZDyMIe0Ll2Ytv6dYAM1p3swcFX/8SKfaB4gNVjhypWXa2
         7Hx+BDf1Ncsa78q78TNVZMeTjUUYF9HgsR8anc7p135GHAjrhmUtHGtkcgiUzH0tKBeK
         +xJTQxj6n/Wwv4RxHIuPzdX1F31AdEx+3+si1XCFZyjV1BEJZwwBPpuZLMqiOPyY5O4r
         uuCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=eYBA4JEoj+6HDZjb5PXxnNqkJ75zBCl17rXsLi2QSTU=;
        b=W4kPSErh1Lm5FHH2N+FWQ/knxT65IjUgh5taquoTnYRPaP41VMaz3qOgkAIYA94Fmj
         /CGS1b+MolOgN50gXCjr9aL4hmCJJixc5Tf9HJGYqkxTGYwUOPmuEY5F5PNdx9TGOVUb
         jJeZkMfpyoa3lkvzyddffzz89N2cLWG18+3ZXmonujy3AzM8GSo6iIX8ngHJshC1/RDh
         RL1eelO2a+NWFI916cWDGkV8/ljulEm7f3yG7qKqL/udqSDa8wXqHuAT77ROKyMl42AP
         gziCPOdi6tIjkF8eP0F+1GRKzcNWkPtv1U/9nNpGl8ZhgD+Oe8gUmCegLxZdmTU3rvyl
         mc6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYBA4JEoj+6HDZjb5PXxnNqkJ75zBCl17rXsLi2QSTU=;
        b=hl1AHg81dcGLX6ZkBxSQVHVde4kmUuX++EfY2f5OYPKeJufb/jsJdH2uFaTgs2zOLu
         xHoaTDeShqm3GgMtNUognIpdBi9sfUdNeJXa2ICABAwZdUT5jyoYmYpY2H1XcZJyLX4e
         jtsdPiwxKer4YzaK+4Wnoixe6vpurBEU3wKmbR/n26tXYTjXKHW12/Pm2d9LAsJaF1mC
         94gkMrf6tTD2ha2P4Ydib9XLe0NoS246N9T5tOz/xEWIPqswGWZ1Vl7xAtVOmvWJNEoo
         eBeGheZigjROXgUTeRv9FnkM36eFdlUSSO0aA1gaLcq91We4vxTsFUb1JHKx6ROjTsyS
         3O8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eYBA4JEoj+6HDZjb5PXxnNqkJ75zBCl17rXsLi2QSTU=;
        b=RxhKAzhAFEeFPmttk0SH/hd2XgOaswfg9fLi2ACvWO9Ou25fRCzZdnDx5qk/w5/Ez0
         RyOK6Q2Qr9JkrobrTIJLDc4hnvBCL2WxFeUh1tobsteVbsDYWE6OJ02GkpAcq9BtmWdM
         naHHIej0gnsKV+2UqkQ3+2riagzJAY85Q+Wz9Pl/gbJq5s8iw4BuHPv6mbdVry3a253A
         IANs/DCy+GWX3op5v3V4hVkv/aaZNMeP0L/Mvp4m0lJKHzPgewYmYOtwjSHTDBCQOn/w
         Mo4cbHoW3RN98l/F8vWTWZSALeplhrcSsXEjOacPNyVUzVb+S4xbLtqAmQ+9XvsvePRe
         LISQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530r/E7BhviDw5ZPr69Wmx87MUQO45W7o7dma8VxsoINtHVc8V9S
	UXSJnQZKtp/D7xfoC5QiLyM=
X-Google-Smtp-Source: ABdhPJyaxvP1YM31FGNhF9x4Lw42vbym+8IzVz6mKe+zO423FlX7jhpCfl8RBTScN/uFi2F65xNFLA==
X-Received: by 2002:a2e:8017:: with SMTP id j23mr527063ljg.22.1588917601283;
        Thu, 07 May 2020 23:00:01 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:651c:288:: with SMTP id b8ls97706ljo.8.gmail; Thu, 07
 May 2020 23:00:00 -0700 (PDT)
X-Received: by 2002:a2e:731a:: with SMTP id o26mr547254ljc.189.1588917600677;
        Thu, 07 May 2020 23:00:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588917600; cv=none;
        d=google.com; s=arc-20160816;
        b=GgjzjRA1HONNAcDuOoBf7JS61A6E3m5hB/Sgi3tTV54ZON+SmsRD8557cMCDEWIrXX
         biEjdnZit14wsqfAONqGoWABTFtgCqr51PVte219hdoezJ9P9XMQoR1X1M88lYtAn7lU
         JbLGBU6SrqCvB7ZVAw2XHRV1lVn+U+azUP1OIrUkQaPAjcAyOKAu/nCJHRin0oouNbRv
         W2cBcjayb55zW7oeboswlSr7EqZ85yVb0Be3k5KJbHrnzcwrkzD9ajugkmSN0XmquNTy
         s5XS8b7R99N69vjxmc6GK3fQOVWXzBhkzTCcY93KTUWQXVqsmLB/MjvElnLA/08xCHq2
         DUhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=/9f2gEhf+mgqiihJG5RGDSNGDN6a80+v1qkmu7C7lz4=;
        b=DD2FSG+DW6cBsoESAjaCiI6aHTDEpnnwzs/e03bAwL+JAU8LuWY+XveDwZ5tafnMGu
         sUjUyClX2VziL4hV8HoABwdoAEORQcfkb1Lb6bhnJv878fsBYRxrGxdPD43I16ClJZ8C
         k+j9fv/1oGlI2rfT/DTdyJWrZK6EALM5RfZAYgdKBM0VvGOPBQ3POOl2D5+34L9y/TVS
         ETLfg7PqjOQBdD3PCrcBzRHd/TzX3hkVYogyUJcJOzrDqFM2oioC1iYf2yKj4/4kwYkE
         K7KCnHf08AhjbYT2eKy5TPIcIi/TJhxWFKgcgfq+G3aVdvibaw/u4Qw4GLXlnYxgUh8O
         VllA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id d19si48636lji.3.2020.05.07.23.00.00
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 07 May 2020 23:00:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id 6AF672A0457
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: lduncan@suse.com
Cc: cleech@redhat.com,
	martin.petersen@oracle.com,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	kernel@collabora.com,
	Khazhismel Kumykov <khazhy@google.com>
Subject: [PATCH] iscsi: Fix deadlock on recovery path during GFP_IO reclaim
Date: Fri,  8 May 2020 01:59:54 -0400
Message-Id: <20200508055954.843165-1-krisman@collabora.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

iscsi suffers from a deadlock in case a management command submitted via
the netlink socket sleeps on an allocation while holding the
rx_queue_mutex, if that allocation causes a memory reclaim that
writebacks to a failed iscsi device.  Then, the recovery procedure can
never make progress to recover the failed disk or abort outstanding IO
operations to complete the reclaim (since rx_queue_mutex is locked),
thus locking the system.

Nevertheless, just marking all allocations under rx_queue_mutex as
GFP_NOIO (or locking the userspace process with something like
PF_MEMALLOC_NOIO) is not enough, since the iscsi command code relies on
other subsystems that try to grab locked mutexes, whose threads are
GFP_IO, leading to the same deadlock. One instance where this situation
can be observed is in the backtraces below, stitched from multiple bugs
reports, involving the kobj uevent sent when a session is created.

The root of the problem is not the fact that iscsi does GFP_IO
allocations, that is acceptable. The actual problem is that
rx_queue_mutex has a very large granularity, covering every unrelated
netlink command execution at the same time as the error recovery path.

The proposed fix leverages the recently added mechanism to stop failed
connections from the kernel, by enabling it to execute even though a
management command from the netlink socket is being run (rx_queue_mutex
is held), provided that the command is known to be safe.  It splits the
rx_queue_mutex in two mutexes, one protecting from concurrent command
execution from the netlink socket, and one protecting stop_conn from
racing with other connection management operations that might conflict
with it.

It is not very pretty, but it is the simplest way to resolve the
deadlock.  I considered making it a lock per connection, but some
external mutex would still be needed to deal with iscsi_if_destroy_conn.

The patch was tested by forcing a memory shrinker (unrelated, but used
bufio/dm-verity) to reclaim ISCSI pages every time
ISCSI_UEVENT_CREATE_SESSION happens, which is reasonable to simulate
reclaims that might happen with GFP_KERNEL on that path.  Then, a faulty
hung target causes a connection to fail during intensive IO, at the same
time a new session is added by iscsid.

The following stacktraces are stiches from several bug reports, showing
a case where the deadlock can happen.

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

Reported-by: Khazhismel Kumykov <khazhy@google.com>
Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
---
 drivers/scsi/scsi_transport_iscsi.c | 67 +++++++++++++++++++++--------
 1 file changed, 49 insertions(+), 18 deletions(-)

diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
index 17a45716a0fe..d99c17306dff 100644
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
@@ -2442,6 +2448,32 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
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
@@ -2460,30 +2492,17 @@ static void stop_conn_work_fn(struct work_struct *work)
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
 
@@ -2843,8 +2862,11 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
 	spin_unlock_irqrestore(&connlock, flags);
 
 	ISCSI_DBG_TRANS_CONN(conn, "Destroying transport conn\n");
+
+	mutex_lock(&conn_mutex);
 	if (transport->destroy_conn)
 		transport->destroy_conn(conn);
+	mutex_unlock(&conn_mutex);
 
 	return 0;
 }
@@ -3686,9 +3708,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
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
 
@@ -3709,25 +3734,31 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
 		break;
 	case ISCSI_UEVENT_START_CONN:
 		conn = iscsi_conn_lookup(ev->u.start_conn.sid, ev->u.start_conn.cid);
-		if (conn)
+		if (conn) {
+			mutex_lock(&conn_mutex);
 			ev->r.retcode = transport->start_conn(conn);
+			mutex_unlock(&conn_mutex);
+		}
 		else
 			err = -EINVAL;
 		break;
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
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200508055954.843165-1-krisman%40collabora.com.
