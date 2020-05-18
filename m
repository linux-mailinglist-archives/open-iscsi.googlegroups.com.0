Return-Path: <open-iscsi+bncBDA4VMEL3QNRBGVTRP3AKGQEYIWBYLI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F101D879C
	for <lists+open-iscsi@lfdr.de>; Mon, 18 May 2020 20:53:14 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id qn27sf4708412ejb.11
        for <lists+open-iscsi@lfdr.de>; Mon, 18 May 2020 11:53:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589827994; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMk/JP9Vxcc+mOWmBBQJ+9nVhhx7erSF9jdbNslK7+wZnLiEGVycpbVdZeYxAoBkol
         zHUgtFRXI1pRusOvMm4s9Jy3UaGGZ7VP/zZaHynKswvO4KKyDS5cQhN8vpieZOBF5HFH
         swDPvbxxWqqoSuTUsUMtkDuDg623fdeY0lcDo3BWunqZzNYYh61aCJly+YzgREiyn+/V
         Gpawjl1O9HY5/g6zml5aZtcrAgag1He5mGHuJ5pGfOLV/0gXq1ml3TkBVX3KR5Fa/OXn
         6Ms0oDxjDALVePrPv69uNnv0AUOpNTMl0SWgKJxHn6J0LOin7NAXxu8Wh1Qmb5EqDpg4
         AVXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:subject:cc:to
         :from:sender:dkim-signature;
        bh=3DCCyGh8EbbPkjmqtmZSYcx0An2JmPghtodo4wombUc=;
        b=EX+X+w1oLaaKyf/7wU90JuuwNyI6TmBys6mfz2dPS6YKqzWdyEvaBLibo46h2KgZc/
         7tTvyXeSxeIyeKDS6eJhZSOiFp4VkFtvL/INnupTAxgJGmzZEK+qe8KLtpQW8d9rlwFQ
         kfounuLIGHKInd1nQKKfUKKrInejlPbo/48zco5LcuzFR9L2ThH7QmreOVysEpU1e3W5
         oMY0di9j3gOu12Xz0IMsrk8sSvXKJk7CPSRUB+R//T0unTR6PFbVpFo74FRiSzFp1y7q
         nrZ1ZdPvBSacO3jzZ+ShM/gavarsYHcRNqvt84TR1aOdnN9TPoDHy5lVkvBLywVxMY9y
         kxRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3DCCyGh8EbbPkjmqtmZSYcx0An2JmPghtodo4wombUc=;
        b=HP4zfSf1R78ytiS1nYRMEoC3A/yrEmgcBU1rsSDktsqxNUg+dr2+MGlggK3/t2Q8Ar
         z2xxjfRMnvC0eIrvZrOoTYqsvEPYODJY+TzKb/sAm3IiLsfZ4MUuyD7a145PM71X1W3q
         QxXPAIodlO1Xrswxc6Qqtlgfx5Y6L6sDWqhoNpSQLltyecR4YiHAuomYwd11pbMR9ary
         GvmawyQ/dIUCfzMsyiy15fzYMyC8LblDeMkap2UQT+UrLZSZr72PN/+J47pfXe4+Lbbq
         Dv6JQAeTbC1U3wemccRRY80teUSY3R1zD4LDRgJKXQnmIK7N/1qAAocSKcpjVSh+BkPq
         0giA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3DCCyGh8EbbPkjmqtmZSYcx0An2JmPghtodo4wombUc=;
        b=se9o3VVC2KIYQTnkZAIZQd1noBy5CWsJMGSjohNWHG9oBXt0N5ZiU1v+dYbAnIrgxV
         NJOXu8m/YOAlqs9Oijfx6ubQ+KqInGRDj/dVXQeH1P1k1IABdetVSL5Pf6zcxQjzJO0w
         5YV0PW2S54qyXx0d0bQN0pnpkvvA7T3mjgJ8UVAGYzdMocIScUO7K/3/eATOwCZebPDy
         vVxQ0m5j5WLTIJGWjwG7NvAu+kHDD50wBELU4o+67hnOAk5GXkbHss22dVbiiWOWqaGP
         ZJAynoMiuD/TchNk3hYgj4dpcMnGbbuRp8aYL1nmwWGN3o48OA5rj/QCxarUiUe0adGj
         hMog==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532fNmpg0PCmkn0+Zkd5xt1EOrHrUFy3yQuZDIVljiOGdWac8dus
	0LvWvM3WYA9HNKOsGum5VDw=
X-Google-Smtp-Source: ABdhPJwZdnXKOBWB5sW11/Nbos5nQEOAErwOa17pbbgwuUOFfFxjedjly2HkAWEwKvdzsUmO+Qxd4w==
X-Received: by 2002:a17:906:2ac6:: with SMTP id m6mr15543457eje.234.1589827994534;
        Mon, 18 May 2020 11:53:14 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:9508:: with SMTP id u8ls4364432ejx.8.gmail; Mon, 18
 May 2020 11:53:14 -0700 (PDT)
X-Received: by 2002:a17:906:b79a:: with SMTP id dt26mr16510578ejb.121.1589827993945;
        Mon, 18 May 2020 11:53:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589827993; cv=none;
        d=google.com; s=arc-20160816;
        b=w3TXlJ8mzB+RZD80jvFZmpJ76hvMDHNN8Ux33PxuHHXvaB8aHcGVycd9IXzSfhpAm1
         /rQjAiWcvsW3mTP6uUjjyoUUV9LxK7Ayx33tnXowaleDKkGN4Wen9mPC0JkTZwt/6rgB
         PYxMjEw7qR/6LZD3z3/NaLoU8pIePi0F4SHSPRVhMqwAUtnOxlxIApOA0gtHrdXeeJG1
         BXKfsORzulHMJJaD5PJFqV9rX0Df8oYD/ccw1ZxSGx6D5eQ3X1goTx3j2UdB7oxi4Ikp
         uKzWNuu0sMaxGiZW32ei/mB+FtuoavEYb06v5NwRzyR3liTOgpt4K0XpzMC36EgLqhFu
         MXVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:subject:cc:to:from;
        bh=iJQuA8uZOvK7SE/4jpcxrp5mOEjVv3MU00382IH5ubk=;
        b=mf3t/gTkz3sbVMD9+8X/cdERNuDvLFkhHaQqu7KKCVLqqqNxR0oDa11C9cUOglOrti
         27zZMtJpUuiP/PjnsP1Rq8xzNoFxgorR0oUqPLZq5nk8JesTQ4l3k/rizj8hf9wv/qs8
         0/NN7uqrGoxCNWReQ8k0xsUV61uLAYvg3Rl9fhqIQM4swRbpvpsp+BYllDIguc14eGTS
         WGXtuYt9ZICpYNkKGEnYD3IGLg85z4KVBwJZwh0ObAuuJmC1gZoQJvKOVat8WoB83qqA
         jWVrmemDwv+6hLN3CrlsqsuOFYipkE/n6mfckVKwZnFekT7f/PQAIXrXycXzTiBACNCX
         xOcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id bu18si632117edb.2.2020.05.18.11.53.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 May 2020 11:53:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id 50FC92A022E
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: Lee Duncan <lduncan@suse.com>
Cc: <cleech@redhat.com>,  <martin.petersen@oracle.com>,  <open-iscsi@googlegroups.com>,  <linux-scsi@vger.kernel.org>,  <kernel@collabora.com>,  Khazhismel Kumykov <khazhy@google.com>
Subject: Re: [PATCH] iscsi: Fix deadlock on recovery path during GFP_IO reclaim
Organization: Collabora
References: <20200508055954.843165-1-krisman@collabora.com>
	<eb7a3a10-bb04-f601-a01b-c50f482474fa@suse.com>
Date: Mon, 18 May 2020 14:53:09 -0400
In-Reply-To: <eb7a3a10-bb04-f601-a01b-c50f482474fa@suse.com> (Lee Duncan's
	message of "Sun, 17 May 2020 10:30:40 -0700")
Message-ID: <85eerhf52i.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3
 as permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Reply-To: open-iscsi@googlegroups.com
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

Lee Duncan <lduncan@suse.com> writes:

> On 5/7/20 10:59 PM, Gabriel Krisman Bertazi wrote:
>> iscsi suffers from a deadlock in case a management command submitted via
>> the netlink socket sleeps on an allocation while holding the
>> rx_queue_mutex, if that allocation causes a memory reclaim that
>> writebacks to a failed iscsi device.  Then, the recovery procedure can
>> never make progress to recover the failed disk or abort outstanding IO
>> operations to complete the reclaim (since rx_queue_mutex is locked),
>> thus locking the system.
>> 
>> Nevertheless, just marking all allocations under rx_queue_mutex as
>> GFP_NOIO (or locking the userspace process with something like
>> PF_MEMALLOC_NOIO) is not enough, since the iscsi command code relies on
>> other subsystems that try to grab locked mutexes, whose threads are
>> GFP_IO, leading to the same deadlock. One instance where this situation
>> can be observed is in the backtraces below, stitched from multiple bugs
>> reports, involving the kobj uevent sent when a session is created.
>> 
>> The root of the problem is not the fact that iscsi does GFP_IO
>> allocations, that is acceptable. The actual problem is that
>> rx_queue_mutex has a very large granularity, covering every unrelated
>> netlink command execution at the same time as the error recovery path.
>> 
>> The proposed fix leverages the recently added mechanism to stop failed
>> connections from the kernel, by enabling it to execute even though a
>> management command from the netlink socket is being run (rx_queue_mutex
>> is held), provided that the command is known to be safe.  It splits the
>> rx_queue_mutex in two mutexes, one protecting from concurrent command
>> execution from the netlink socket, and one protecting stop_conn from
>> racing with other connection management operations that might conflict
>> with it.
>> 
>> It is not very pretty, but it is the simplest way to resolve the
>> deadlock.  I considered making it a lock per connection, but some
>> external mutex would still be needed to deal with iscsi_if_destroy_conn.
>> 
>> The patch was tested by forcing a memory shrinker (unrelated, but used
>> bufio/dm-verity) to reclaim ISCSI pages every time
>> ISCSI_UEVENT_CREATE_SESSION happens, which is reasonable to simulate
>> reclaims that might happen with GFP_KERNEL on that path.  Then, a faulty
>> hung target causes a connection to fail during intensive IO, at the same
>> time a new session is added by iscsid.
>> 
>> The following stacktraces are stiches from several bug reports, showing
>> a case where the deadlock can happen.
>> 
>>  iSCSI-write
>>          holding: rx_queue_mutex
>>          waiting: uevent_sock_mutex
>> 
>>          kobject_uevent_env+0x1bd/0x419
>>          kobject_uevent+0xb/0xd
>>          device_add+0x48a/0x678
>>          scsi_add_host_with_dma+0xc5/0x22d
>>          iscsi_host_add+0x53/0x55
>>          iscsi_sw_tcp_session_create+0xa6/0x129
>>          iscsi_if_rx+0x100/0x1247
>>          netlink_unicast+0x213/0x4f0
>>          netlink_sendmsg+0x230/0x3c0
>> 
>>  iscsi_fail iscsi_conn_failure
>>          waiting: rx_queue_mutex
>> 
>>          schedule_preempt_disabled+0x325/0x734
>>          __mutex_lock_slowpath+0x18b/0x230
>>          mutex_lock+0x22/0x40
>>          iscsi_conn_failure+0x42/0x149
>>          worker_thread+0x24a/0xbc0
>> 
>>  EventManager_
>>          holding: uevent_sock_mutex
>>          waiting: dm_bufio_client->lock
>> 
>>          dm_bufio_lock+0xe/0x10
>>          shrink+0x34/0xf7
>>          shrink_slab+0x177/0x5d0
>>          do_try_to_free_pages+0x129/0x470
>>          try_to_free_mem_cgroup_pages+0x14f/0x210
>>          memcg_kmem_newpage_charge+0xa6d/0x13b0
>>          __alloc_pages_nodemask+0x4a3/0x1a70
>>          fallback_alloc+0x1b2/0x36c
>>          __kmalloc_node_track_caller+0xb9/0x10d0
>>          __alloc_skb+0x83/0x2f0
>>          kobject_uevent_env+0x26b/0x419
>>          dm_kobject_uevent+0x70/0x79
>>          dev_suspend+0x1a9/0x1e7
>>          ctl_ioctl+0x3e9/0x411
>>          dm_ctl_ioctl+0x13/0x17
>>          do_vfs_ioctl+0xb3/0x460
>>          SyS_ioctl+0x5e/0x90
>> 
>>  MemcgReclaimerD"
>>          holding: dm_bufio_client->lock
>>          waiting: stuck io to finish (needs iscsi_fail thread to progress)
>> 
>>          schedule at ffffffffbd603618
>>          io_schedule at ffffffffbd603ba4
>>          do_io_schedule at ffffffffbdaf0d94
>>          __wait_on_bit at ffffffffbd6008a6
>>          out_of_line_wait_on_bit at ffffffffbd600960
>>          wait_on_bit.constprop.10 at ffffffffbdaf0f17
>>          __make_buffer_clean at ffffffffbdaf18ba
>>          __cleanup_old_buffer at ffffffffbdaf192f
>>          shrink at ffffffffbdaf19fd
>>          do_shrink_slab at ffffffffbd6ec000
>>          shrink_slab at ffffffffbd6ec24a
>>          do_try_to_free_pages at ffffffffbd6eda09
>>          try_to_free_mem_cgroup_pages at ffffffffbd6ede7e
>>          mem_cgroup_resize_limit at ffffffffbd7024c0
>>          mem_cgroup_write at ffffffffbd703149
>>          cgroup_file_write at ffffffffbd6d9c6e
>>          sys_write at ffffffffbd6662ea
>>          system_call_fastpath at ffffffffbdbc34a2
>> 
>> Reported-by: Khazhismel Kumykov <khazhy@google.com>
>> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>> ---
>>  drivers/scsi/scsi_transport_iscsi.c | 67 +++++++++++++++++++++--------
>>  1 file changed, 49 insertions(+), 18 deletions(-)
>> 
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>> index 17a45716a0fe..d99c17306dff 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -1616,6 +1616,12 @@ static DECLARE_TRANSPORT_CLASS(iscsi_connection_class,
>>  static struct sock *nls;
>>  static DEFINE_MUTEX(rx_queue_mutex);
>>  
>> +/*
>> + * conn_mutex protects the {start,bind,stop,destroy}_conn from racing
>> + * against the kernel stop_connection recovery mechanism
>> + */
>> +static DEFINE_MUTEX(conn_mutex);
>> +
>>  static LIST_HEAD(sesslist);
>>  static LIST_HEAD(sessdestroylist);
>>  static DEFINE_SPINLOCK(sesslock);
>> @@ -2442,6 +2448,32 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
>>  }
>>  EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
>>  
>> +/*
>> + * This can be called without the rx_queue_mutex, if invoked by the kernel
>> + * stop work. But, in that case, it is guaranteed not to race with
>> + * iscsi_destroy by conn_mutex.
>> + */
>> +static void iscsi_if_stop_conn(struct iscsi_cls_conn *conn, int flag)
>> +{
>> +	/*
>> +	 * It is important that this path doesn't rely on
>> +	 * rx_queue_mutex, otherwise, a thread doing allocation on a
>> +	 * start_session/start_connection could sleep waiting on a
>> +	 * writeback to a failed iscsi device, that cannot be recovered
>> +	 * because the lock is held.  If we don't hold it here, the
>> +	 * kernel stop_conn_work_fn has a chance to stop the broken
>> +	 * session and resolve the allocation.
>> +	 *
>> +	 * Still, the user invoked .stop_conn() needs to be serialized
>> +	 * with stop_conn_work_fn by a private mutex.  Not pretty, but
>> +	 * it works.
>> +	 */
>> +	mutex_lock(&conn_mutex);
>> +	conn->transport->stop_conn(conn, flag);
>> +	mutex_unlock(&conn_mutex);
>> +
>> +}
>> +
>>  static void stop_conn_work_fn(struct work_struct *work)
>>  {
>>  	struct iscsi_cls_conn *conn, *tmp;
>> @@ -2460,30 +2492,17 @@ static void stop_conn_work_fn(struct work_struct *work)
>>  		uint32_t sid = iscsi_conn_get_sid(conn);
>>  		struct iscsi_cls_session *session;
>>  
>> -		mutex_lock(&rx_queue_mutex);
>> -
>>  		session = iscsi_session_lookup(sid);
>>  		if (session) {
>>  			if (system_state != SYSTEM_RUNNING) {
>>  				session->recovery_tmo = 0;
>> -				conn->transport->stop_conn(conn,
>> -							   STOP_CONN_TERM);
>> +				iscsi_if_stop_conn(conn, STOP_CONN_TERM);
>>  			} else {
>> -				conn->transport->stop_conn(conn,
>> -							   STOP_CONN_RECOVER);
>> +				iscsi_if_stop_conn(conn, STOP_CONN_RECOVER);
>>  			}
>>  		}
>>  
>>  		list_del_init(&conn->conn_list_err);
>> -
>> -		mutex_unlock(&rx_queue_mutex);
>> -
>> -		/* we don't want to hold rx_queue_mutex for too long,
>> -		 * for instance if many conns failed at the same time,
>> -		 * since this stall other iscsi maintenance operations.
>> -		 * Give other users a chance to proceed.
>> -		 */
>> -		cond_resched();
>>  	}
>>  }
>
> I'm curious about why you removed the cond_resched() here. Is it because
> it is no longer needed, with shorter (mutex) waiting time?
>

Hi Lee,

My thought was that the main reason for cond_resched here was to give a
chance for other iscsi maintenance operations to run.  But, since
conn_mutex, differently from rx_queue_mutex, won't stop most of the
operations, it felt unnecessary.  If you disagree, I can submit a v2
that doesn't change it.



>>  
>> @@ -2843,8 +2862,11 @@ iscsi_if_destroy_conn(struct iscsi_transport *transport, struct iscsi_uevent *ev
>>  	spin_unlock_irqrestore(&connlock, flags);
>>  
>>  	ISCSI_DBG_TRANS_CONN(conn, "Destroying transport conn\n");
>> +
>> +	mutex_lock(&conn_mutex);
>>  	if (transport->destroy_conn)
>>  		transport->destroy_conn(conn);
>> +	mutex_unlock(&conn_mutex);
>>  
>>  	return 0;
>>  }
>> @@ -3686,9 +3708,12 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
>>  			break;
>>  		}
>>  
>> +		mutex_lock(&conn_mutex);
>>  		ev->r.retcode =	transport->bind_conn(session, conn,
>>  						ev->u.b_conn.transport_eph,
>>  						ev->u.b_conn.is_leading);
>> +		mutex_unlock(&conn_mutex);
>> +
>>  		if (ev->r.retcode || !transport->ep_connect)
>>  			break;
>>  
>> @@ -3709,25 +3734,31 @@ iscsi_if_recv_msg(struct sk_buff *skb, struct nlmsghdr *nlh, uint32_t *group)
>>  		break;
>>  	case ISCSI_UEVENT_START_CONN:
>>  		conn = iscsi_conn_lookup(ev->u.start_conn.sid, ev->u.start_conn.cid);
>> -		if (conn)
>> +		if (conn) {
>> +			mutex_lock(&conn_mutex);
>>  			ev->r.retcode = transport->start_conn(conn);
>> +			mutex_unlock(&conn_mutex);
>> +		}
>>  		else
>>  			err = -EINVAL;
>>  		break;
>>  	case ISCSI_UEVENT_STOP_CONN:
>>  		conn = iscsi_conn_lookup(ev->u.stop_conn.sid, ev->u.stop_conn.cid);
>>  		if (conn)
>> -			transport->stop_conn(conn, ev->u.stop_conn.flag);
>> +			iscsi_if_stop_conn(conn, ev->u.stop_conn.flag);
>>  		else
>>  			err = -EINVAL;
>>  		break;
>>  	case ISCSI_UEVENT_SEND_PDU:
>>  		conn = iscsi_conn_lookup(ev->u.send_pdu.sid, ev->u.send_pdu.cid);
>> -		if (conn)
>> +		if (conn) {
>> +			mutex_lock(&conn_mutex);
>>  			ev->r.retcode =	transport->send_pdu(conn,
>>  				(struct iscsi_hdr*)((char*)ev + sizeof(*ev)),
>>  				(char*)ev + sizeof(*ev) + ev->u.send_pdu.hdr_size,
>>  				ev->u.send_pdu.data_size);
>> +			mutex_unlock(&conn_mutex);
>> +		}
>>  		else
>>  			err = -EINVAL;
>>  		break;
>> 
>
> My question above is for my own information, so I'll still say:
>
> Reviewed-by: Lee Duncan <lduncan@suse.com>

-- 
Gabriel Krisman Bertazi

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/85eerhf52i.fsf%40collabora.com.
