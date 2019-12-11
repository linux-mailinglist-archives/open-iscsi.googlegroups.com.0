Return-Path: <open-iscsi+bncBD73JN6PTQMBB4PNYDXQKGQEU6ZSOVY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A674119FD7
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 01:23:14 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id 16sf15922791ywz.5
        for <lists+open-iscsi@lfdr.de>; Tue, 10 Dec 2019 16:23:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576023793; cv=pass;
        d=google.com; s=arc-20160816;
        b=PZ9jebyoob9IGa8J8TICmV72KSpagTDxaTjj95/pbQbkkFX4oxVkWms+YirjaBVmkI
         q1fYUUznF5DlOphPtZC2ZCaYN7AT+ALmzN+Oonj7rqU5qr38teWrwir8CCkpieFkZLjx
         pfS/ktU5B6M7bpnMO4OmtpRY6nn7gyr0k6veR/gdIPimrPTwToelNyxA3+EKpG9JvojV
         hQo0HnsLma67jMiC4x7lnhh4iNtznYF3iH5mtZWgZLCD3RhBtQ2/2X/CPiWkn3gLHUxN
         TeKjkMru8KFY5efLuRaek9k7DYpzbXI9wN5LQ4EX5gPR1I/STydLKJkIIrRTdBBzrFNL
         MRdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject:sender
         :dkim-signature;
        bh=2YR9iMRqSUJaM7EL1b4fm0fKdZvobF5dhVHfyqmW81w=;
        b=Rpgntd8LwzLEF04Z5OV4+mrAnHTHJiOGFFqdc7SPE6jPwBm1umBTY43g6vc9swcT7L
         MdS7mGmTb0370/iOLY6xOa4Y4BRF09iOPLat0Qy8rSwAdDV1xS91Qg31LXtr9C3DP7TX
         aA1Dtx+RqynKyFK/7U2gAJwI9KM0+Z2de03q0pP8ruc7lhb8QGr6wILfnlUpv4NNb85O
         9OxVbwQLk1o8t1OfPVKB+rMhT7eaNz84vHuSejtsYFphcSY4ojqFo/5gcumj/Up86OX2
         x+XI9s/pe3/NibFDE/jr8hst7aVsqOF1UNYwxyaaJh6Dt4jHnYj8ZtfxJ0MfX/wOwMFQ
         1qlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WuQV7Isg;
       spf=pass (google.com: domain of mchristi@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=mchristi@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2YR9iMRqSUJaM7EL1b4fm0fKdZvobF5dhVHfyqmW81w=;
        b=R67C4xc3PRkZiGbgUNrsNSuRL+wmtuwMeoDg4XegP7HVTSJk4JWgLw/X2LfZDOgAH/
         2lyNxs+180BzsvXrF0Fd6c785WTeXMDxryT7XIMFSgKeJuBK7eBiIKhEYQWQf3j8Iw7U
         F7I9l9Wor9zYc0w0e3oZvVXBG/w2CGjtK1sIka1jCN5jQK7njzdQHw/m/c6T778OnyrQ
         kUb5HqaqyIV0kV6FONijHkLdy/kjC1Xb+JgZxt5mmQgG/HI1x4AkTkmBofoTj2RWIIwI
         1cdNJt/mjYi55UgjakbggZX3U/yymZ9TGZ3/lZLyHUQx80iwFqQ2P/Ma9CGNumBLdGKn
         wLBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2YR9iMRqSUJaM7EL1b4fm0fKdZvobF5dhVHfyqmW81w=;
        b=Dhy6g3bRSBKcXG55zCh6UilbzyrFf6Zhh5wffd9KR6f1za3Hk/TQ3ynnP8xbq9w9uG
         1lrQnNCFd5GkrFZdHYAV71VuIFE+6fyDjRh/9Z1v1iLAwmWMdq7UuFUdBrIkuDMM3qU5
         D1vCZQdwokMHPXf0oARu0NcPhLLjfybjWrITBYCafXQuXBI7WKuY1C6geerzjbfzf7h1
         yb3K2va8dQEelz54GLejeWUn0Fl3SbQ30na4OWTg9Clo24XUo35MxQYGu1uOzFO0jg6u
         aCi8MXddYZuY/OVb6YpzgcQDtfXwLGWsxm9AIQ/IoUmj46qJZqfbA1YDBWMPQeSv2XYw
         btMg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWH8h7unslFpH8SGaXHfBfWT0UW1zDzSOlccdWy0doRHmq+Z93n
	Jg9CwVqIVLy1jqZ/oe19dks=
X-Google-Smtp-Source: APXvYqzL8Mfsfu8jbR7ALsRdLzPplMXRVg2G3jl6+M0vE/kRj5aDJ1SDmozApHEGKmAj4a1CB2XZ9Q==
X-Received: by 2002:a81:f81:: with SMTP id 123mr255592ywp.268.1576023793175;
        Tue, 10 Dec 2019 16:23:13 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:d116:: with SMTP id i22ls70186ybg.9.gmail; Tue, 10 Dec
 2019 16:23:12 -0800 (PST)
X-Received: by 2002:a25:808d:: with SMTP id n13mr718477ybk.282.1576023792550;
        Tue, 10 Dec 2019 16:23:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576023792; cv=none;
        d=google.com; s=arc-20160816;
        b=wbXObPX5PxIXmpRrMosRcXfeW3Vt9J+nGs5plUeRWXTwA0VwPsEuTCm/M4R3iJnVI3
         hO3/jm40/7NzASxhfSgvB2TG9SqZhVIsfS03Rg8F3fHJqRsAAqnzELBoGB3mWQGaUeIi
         hLBuiNLmZLBAE3yGeSZEZuOZu1DsSQoiseRoeEfv6vAIn3f0zWd4/+WaleDdtnvLaTf/
         4DVVQfPQt3bOF2mAVXjJfEV07xXvcH2yuNsR4ABxF6aaqz+X+ZccVclyE8PwID7eCQgU
         8CootXNUF/PNobkZ/VvChFXVkaaL4gLB1ZUaMpyOzTU00u/4jq5A3QgIR8AYTXhFeF3t
         KK7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject:dkim-signature;
        bh=T0DHq5jomRtzqdp4ZrTNBO19gEa7DeelApPK/zuSVrE=;
        b=Vnmt50z+J/igoheo8OvW542ff8mOrciW4fD0pDuzpYCfjfySgeXYw54kzRSwF/2cYR
         QJ/tljaEooBNOpFely9jYEmLhXT8eEqeo+q3PCyD6SNDsjtD3Idd3Q0M0saUWQkjQWUY
         fG8bNa1Gzcai8vX86YZppa+CWrdPElEBt2VThZX89Y/WiX1H9fSLSG0GzDYTbsITSndM
         WLws1SRLuFDyliDQAr77Ur/zt9Av/MzbjF7dEhCLW0NUJKQTfoYFpuSAIBHlDNhJLExt
         DHunLs9IujRF3iqoT9kJlGaYFgN4wYaZS1PwWxhcOvM/oaYbis2iyVlaHjQuAG7zG6N2
         ikZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WuQV7Isg;
       spf=pass (google.com: domain of mchristi@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=mchristi@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id s64si16175ywf.0.2019.12.10.16.23.12
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 16:23:12 -0800 (PST)
Received-SPF: pass (google.com: domain of mchristi@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-YqUUItqXMga3HYiAQj_UhQ-1; Tue, 10 Dec 2019 19:23:08 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD897801E76;
	Wed, 11 Dec 2019 00:23:06 +0000 (UTC)
Received: from [10.10.120.90] (ovpn-120-90.rdu2.redhat.com [10.10.120.90])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5225D1001925;
	Wed, 11 Dec 2019 00:23:03 +0000 (UTC)
Subject: Re: [PATCH] iscsi: Perform connection failure entirely in kernel
 space
To: Gabriel Krisman Bertazi <krisman@collabora.com>, lduncan@suse.com,
 cleech@redhat.com, martin.petersen@oracle.com
References: <20191209182054.1287374-1-krisman@collabora.com>
 <5DF032BD.3070509@redhat.com>
Cc: linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
 Bharath Ravi <rbharath@google.com>, kernel@collabora.com,
 Dave Clausen <dclausen@google.com>, Nick Black <nlb@google.com>,
 Vaibhav Nagarnaik <vnagarnaik@google.com>, Anatol Pomazau
 <anatol@google.com>, Tahsin Erdogan <tahsin@google.com>,
 Frank Mayhar <fmayhar@google.com>, Junho Ryu <jayr@google.com>,
 Khazhismel Kumykov <khazhy@google.com>
From: Mike Christie <mchristi@redhat.com>
Message-ID: <5DF036E6.9080907@redhat.com>
Date: Tue, 10 Dec 2019 18:23:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <5DF032BD.3070509@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: YqUUItqXMga3HYiAQj_UhQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mchristi@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=WuQV7Isg;
       spf=pass (google.com: domain of mchristi@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=mchristi@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 12/10/2019 06:05 PM, Mike Christie wrote:
> On 12/09/2019 12:20 PM, Gabriel Krisman Bertazi wrote:
>> From: Bharath Ravi <rbharath@google.com>
>>
>> Connection failure processing depends on a daemon being present to (at
>> least) stop the connection and start recovery.  This is a problem on a
>> multipath scenario, where if the daemon failed for whatever reason, the
>> SCSI path is never marked as down, multipath won't perform the
>> failover and IO to the device will be forever waiting for that
>> connection to come back.
>>
>> This patch implements an optional feature in the iscsi module, to
>> perform the connection failure inside the kernel.  This way, the
>> failover can happen and pending IO can continue even if the daemon is
>> dead. Once the daemon comes alive again, it can perform recovery
>> procedures if applicable.
>>
>> Co-developed-by: Dave Clausen <dclausen@google.com>
>> Signed-off-by: Dave Clausen <dclausen@google.com>
>> Co-developed-by: Nick Black <nlb@google.com>
>> Signed-off-by: Nick Black <nlb@google.com>
>> Co-developed-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
>> Signed-off-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
>> Co-developed-by: Anatol Pomazau <anatol@google.com>
>> Signed-off-by: Anatol Pomazau <anatol@google.com>
>> Co-developed-by: Tahsin Erdogan <tahsin@google.com>
>> Signed-off-by: Tahsin Erdogan <tahsin@google.com>
>> Co-developed-by: Frank Mayhar <fmayhar@google.com>
>> Signed-off-by: Frank Mayhar <fmayhar@google.com>
>> Co-developed-by: Junho Ryu <jayr@google.com>
>> Signed-off-by: Junho Ryu <jayr@google.com>
>> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
>> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
>> Signed-off-by: Bharath Ravi <rbharath@google.com>
>> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
>> ---
>>  drivers/scsi/scsi_transport_iscsi.c | 46 +++++++++++++++++++++++++++++
>>  include/scsi/scsi_transport_iscsi.h |  1 +
>>  2 files changed, 47 insertions(+)
>>
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
>> index 417b868d8735..7251b2b5b272 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -36,6 +36,12 @@ EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_session);
>>  EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_tcp);
>>  EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_sw_tcp);
>>  
>> +static bool kern_conn_failure;
>> +module_param(kern_conn_failure, bool, S_IRUGO|S_IWUSR);
>> +MODULE_PARM_DESC(kern_conn_failure,
>> +		 "Allow the kernel to detect and disable broken connections "
>> +		 "without requiring userspace intervention");
>> +
>>  static int dbg_session;
>>  module_param_named(debug_session, dbg_session, int,
>>  		   S_IRUGO | S_IWUSR);
>> @@ -84,6 +90,12 @@ struct iscsi_internal {
>>  	struct transport_container session_cont;
>>  };
>>  
>> +/* Worker to perform connection failure on unresponsive connections
>> + * completely in kernel space.
>> + */
>> +static void stop_conn_work_fn(struct work_struct *work);
>> +static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
>> +
>>  static atomic_t iscsi_session_nr; /* sysfs session id for next new session */
>>  static struct workqueue_struct *iscsi_eh_timer_workq;
>>  
>> @@ -1609,6 +1621,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
>>  static LIST_HEAD(sesslist);
>>  static DEFINE_SPINLOCK(sesslock);
>>  static LIST_HEAD(connlist);
>> +static LIST_HEAD(connlist_err);
>>  static DEFINE_SPINLOCK(connlock);
>>  
>>  static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
>> @@ -2245,6 +2258,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
>>  
>>  	mutex_init(&conn->ep_mutex);
>>  	INIT_LIST_HEAD(&conn->conn_list);
>> +	INIT_LIST_HEAD(&conn->conn_list_err);
>>  	conn->transport = transport;
>>  	conn->cid = cid;
>>  
>> @@ -2291,6 +2305,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
>>  
>>  	spin_lock_irqsave(&connlock, flags);
>>  	list_del(&conn->conn_list);
>> +	list_del(&conn->conn_list_err);
>>  	spin_unlock_irqrestore(&connlock, flags);
>>  
>>  	transport_unregister_device(&conn->dev);
>> @@ -2405,6 +2420,28 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
>>  }
>>  EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
>>  
>> +static void stop_conn_work_fn(struct work_struct *work)
>> +{
>> +	struct iscsi_cls_conn *conn, *tmp;
>> +	unsigned long flags;
>> +	LIST_HEAD(recovery_list);
>> +
>> +	spin_lock_irqsave(&connlock, flags);
>> +	if (list_empty(&connlist_err)) {
>> +		spin_unlock_irqrestore(&connlock, flags);
>> +		return;
>> +	}
>> +	list_splice_init(&connlist_err, &recovery_list);
>> +	spin_unlock_irqrestore(&connlock, flags);
>> +
>> +	mutex_lock(&rx_queue_mutex);
>> +	list_for_each_entry_safe(conn, tmp, &recovery_list, conn_list_err) {
>> +		conn->transport->stop_conn(conn, STOP_CONN_RECOVER);
>> +		list_del_init(&conn->conn_list_err);
>> +	}
>> +	mutex_unlock(&rx_queue_mutex);
>> +}
>> +
>>  void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>>  {
>>  	struct nlmsghdr	*nlh;
>> @@ -2412,6 +2449,15 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>>  	struct iscsi_uevent *ev;
>>  	struct iscsi_internal *priv;
>>  	int len = nlmsg_total_size(sizeof(*ev));
>> +	unsigned long flags;
>> +
>> +	if (kern_conn_failure) {
>> +		spin_lock_irqsave(&connlock, flags);
>> +		list_add(&conn->conn_list_err, &connlist_err);
>> +		spin_unlock_irqrestore(&connlock, flags);
>> +
>> +		queue_work(system_unbound_wq, &stop_conn_work);
>> +	}
>>  
> 
> Do you need the modparam? I think you could handle this issue and the
> similar one during shutdown at the same time, and you would always want
> to do the kernel based error handler when userspace is not answering for
> both cases.
> 
> You could do the following:
> 
> - Modify __iscsi_block_session so it does the stop_conn callout instead
> of reverse, and change the iscsi_stop_conn/ISCSI_UEVENT_STOP_CONN:
> related code accordingly.

Oh yeah, on second thought, I think I like how your new function above
calls into the stop_conn callout and everything works like it did
before. Ignore the __iscsi_block_session changes. But, I would drop the
modparam, always queue the work, and then fix up the system_state check.



> 
> - In iscsi_conn_error_event you would then do:
> 
> iscsi_multicast_skb();
> iscsi_block_session();
> 
> - You can then drop the system_state check in iscsi_eh_cmd_timed_out
> because those running commands are always handled by the stop_conn call
> in __iscsi_block_session now.
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5DF036E6.9080907%40redhat.com.
