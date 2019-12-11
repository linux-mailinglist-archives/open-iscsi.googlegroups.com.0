Return-Path: <open-iscsi+bncBD73JN6PTQMBBRPFYDXQKGQEGEYFSFY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C26119FC0
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Dec 2019 01:05:25 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id r2sf9610602wrp.7
        for <lists+open-iscsi@lfdr.de>; Tue, 10 Dec 2019 16:05:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576022725; cv=pass;
        d=google.com; s=arc-20160816;
        b=IOPF6eTAwmW+IBcwqLtd0jAXr0LpxeYcRDIHKvcn6plJ/QcQpHTJcjO2PeIgIHLoAv
         QH6Pug0nWSQqovVyloJS805EBufF6dQ5iXw8ug2B+dCInugH6CbHPNJ19A1bukLvcyJN
         Sqr5UPwgTZM+VunvdKfnvR+V9Dx+soJsAawK5/BPZ211RtgnnBjYYrbqXY0I4EULW+DN
         ODnr5Be/E+a868RGkLpF5Mv96K4dBkCw7O2t2DvEmNi1uX8SbBt6P0r8X71Hf7lUyvOr
         igC1QAa1FAA2tLvWV3R66Ps646Kd8JuBWFUnfHuTQFsHxGPGphsA332tVM0lyLpYIFsb
         TxYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject:sender
         :dkim-signature;
        bh=DbU2V+ZE2o88gup7N2hBRm+DiGnfEd54nYqvlaF5gZw=;
        b=O0CvlYnVWN5Gjpp5wtKYPfYKyr6yFeyBbUFW2MslfX6zWDnbnz6NN8hRs0oxOcG01D
         A3SPp92jj9pE5Gqu3y/FenRhkW0MkL4nRogsIYaSw+eMYzEWTCQYGTKC0eBDXUc63Tkp
         B1IUubnXxnZTnfBL7A/GrMEAROaAuuI0be6Zja3hr1yXBZxXU0piIkvJoCQWRngNcE3n
         yYH+PSh8BtANcHp2kNBfxs7KBw+8h/EyneDrea5PrB1xqc7a5lWeDNYfce9pNOfEcYGF
         OwyGB9yrFR0OeGN4RSZecSugEu72dxnQ0TO1+vQ5CKUHgXwfhAhUZ19B8wesGbswkfc2
         RuHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Hir70AQj;
       spf=pass (google.com: domain of mchristi@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=mchristi@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DbU2V+ZE2o88gup7N2hBRm+DiGnfEd54nYqvlaF5gZw=;
        b=Pnfp7e0LJEKVL1F/eMJWkQtVdpBpCxD2tl+OIrOqoXGfLgQBM5jEcgEJLHa9ZkQhYe
         Z8PwYaxxw9JDTxX3H5aOrk82nVqPJPtvtve327WEIm9PRqy9ji4/MjkVyLvJ164Y/SWT
         XCcHvH0NluDtJy2XvUR0NJjmUzpRVzD1OBqsD5TUYklFarJXydJ7ykie145OCrYA5gdB
         XqbNhTNqHV9UB2OyR+VPWDZg4WREVFqY8V071cv+7O8puzhGfOB7Lq0D62GLf3ayLiVa
         EQTGqHx7v4HE8pRMbwT8UWNykMAnjotUHtqkUgIS3uhnMNveZQJGAk47fjx752VnOxJg
         PcgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DbU2V+ZE2o88gup7N2hBRm+DiGnfEd54nYqvlaF5gZw=;
        b=lWIrnAb5O6Q+AT15sXOGxs41jMSURHzOsK9sqzDulg1ujtQKQVspX82THdl7S8km0a
         yRMCdpgZlvWwdk3FFQULFcPqYNA6rQ+22ZY0PaD3jpyrsKECQizR4+8E9iLvipmd1dqZ
         PAgfDCLYD6pTU9XgB5r5PkZdSGTnBOYbYJgzZzp23Zv93U+FC7FA1ExtaZC8e3k24q3p
         T03s/SdDCUEmAJfTPFRNjKxOJYgaYTgXxvDOZytkklim8cEVJnJpTU6wNLGsaE0tdGw8
         KI2GfYXCvkjvjvQnMNmp8NoVWiq/RnlLKpVdwDyPg0dNjcXbCdM7BAGpQIPVObRQYvv2
         dx2A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAX7+zq7vpqYIiR/U01RCqjTckSSPHzmODTnBQkVRhV2//BBqOU5
	aDL/EHIvLT3kKdjK9i76sbU=
X-Google-Smtp-Source: APXvYqxXK/WQW24Ub4YWlb6fZ4W0MusGqluCH4ZcwL7c4Ma96OVWzYkebHQYdpdoCvjd86WNzazRog==
X-Received: by 2002:adf:9b83:: with SMTP id d3mr258388wrc.54.1576022725537;
        Tue, 10 Dec 2019 16:05:25 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a7b:c452:: with SMTP id l18ls144155wmi.1.canary-gmail; Tue,
 10 Dec 2019 16:05:24 -0800 (PST)
X-Received: by 2002:a1c:3803:: with SMTP id f3mr61558wma.134.1576022724898;
        Tue, 10 Dec 2019 16:05:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576022724; cv=none;
        d=google.com; s=arc-20160816;
        b=s60vWU4gh407AtZuOuepGzEZcEuUVBIdgtP2E8mp41/bWLFk9AqmqLvE1HUF1mHWfo
         N+XSDoAJa1rSiyEzQmPwh1rH1XLf4mcPLxYgQBAZvfjjCGCh2SUTwzdoc9jWFo3yfM77
         a0OlTojuVJ8mWIg3FdUwJSV4X14pZRfNjCPFZBoJ2R+8xdl5ULEH3h2z2KV8pfTbIqa3
         ZfyDj8h9Z9l67o6e+kTK/6VyU5+viDmDczN25IyBDmWHnVwcSolcR7sl+F33xeBZqCLN
         EbY9+nicvz/NnlMMr5vlLiqFlmBGmcQLwrY9FzikDD1WGFHeFJi98svay5qdrpIXwuGk
         4f3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject:dkim-signature;
        bh=2eZRMsvPn7LP982w0cdi/MHoqkHlzMVDnha32MiKbgE=;
        b=AlP9pT0+FAFyhZXwQTxtwVd8vmB1Hez19pt1wynUWWZP+K+OETMvc5fdDjeRFbWqS7
         3CG4GdiMmkNcH/Ni+BrFENzWqBbByLj8tqi9o/BLIFnMvw8WPwDX/Zihhv6nyjgsk6mY
         AHqAljZYpiOmmgJlN4B+HLGG3PZWQPXhYhzFxZ13v0xUlCNLOr+5P6tSeM5qwcSAIRvY
         5tckUiQV6aBaYmtpUVtzcS0oNH1Yo6UaZclFk06FcOdg0NcMmtfT6YVI7MyIEjzmJKWx
         yy2qglyFaPHt2YnxKog1DvJaJaZ9wRwV2RIJYUQIz2//ps5mp86ZFN/TOfYDBOyvuC+M
         BBUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Hir70AQj;
       spf=pass (google.com: domain of mchristi@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=mchristi@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id m2si203361wmi.3.2019.12.10.16.05.24
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 16:05:24 -0800 (PST)
Received-SPF: pass (google.com: domain of mchristi@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-FgbbO8t8MTS8frQodtyUAA-1; Tue, 10 Dec 2019 19:05:22 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4651718A8CA4;
	Wed, 11 Dec 2019 00:05:20 +0000 (UTC)
Received: from [10.10.120.90] (ovpn-120-90.rdu2.redhat.com [10.10.120.90])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C51885D6A5;
	Wed, 11 Dec 2019 00:05:17 +0000 (UTC)
Subject: Re: [PATCH] iscsi: Perform connection failure entirely in kernel
 space
To: Gabriel Krisman Bertazi <krisman@collabora.com>, lduncan@suse.com,
 cleech@redhat.com, martin.petersen@oracle.com
References: <20191209182054.1287374-1-krisman@collabora.com>
Cc: linux-scsi@vger.kernel.org, open-iscsi@googlegroups.com,
 Bharath Ravi <rbharath@google.com>, kernel@collabora.com,
 Dave Clausen <dclausen@google.com>, Nick Black <nlb@google.com>,
 Vaibhav Nagarnaik <vnagarnaik@google.com>, Anatol Pomazau
 <anatol@google.com>, Tahsin Erdogan <tahsin@google.com>,
 Frank Mayhar <fmayhar@google.com>, Junho Ryu <jayr@google.com>,
 Khazhismel Kumykov <khazhy@google.com>
From: Mike Christie <mchristi@redhat.com>
Message-ID: <5DF032BD.3070509@redhat.com>
Date: Tue, 10 Dec 2019 18:05:17 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20191209182054.1287374-1-krisman@collabora.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: FgbbO8t8MTS8frQodtyUAA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mchristi@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Hir70AQj;
       spf=pass (google.com: domain of mchristi@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=mchristi@redhat.com;
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

On 12/09/2019 12:20 PM, Gabriel Krisman Bertazi wrote:
> From: Bharath Ravi <rbharath@google.com>
> 
> Connection failure processing depends on a daemon being present to (at
> least) stop the connection and start recovery.  This is a problem on a
> multipath scenario, where if the daemon failed for whatever reason, the
> SCSI path is never marked as down, multipath won't perform the
> failover and IO to the device will be forever waiting for that
> connection to come back.
> 
> This patch implements an optional feature in the iscsi module, to
> perform the connection failure inside the kernel.  This way, the
> failover can happen and pending IO can continue even if the daemon is
> dead. Once the daemon comes alive again, it can perform recovery
> procedures if applicable.
> 
> Co-developed-by: Dave Clausen <dclausen@google.com>
> Signed-off-by: Dave Clausen <dclausen@google.com>
> Co-developed-by: Nick Black <nlb@google.com>
> Signed-off-by: Nick Black <nlb@google.com>
> Co-developed-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> Signed-off-by: Vaibhav Nagarnaik <vnagarnaik@google.com>
> Co-developed-by: Anatol Pomazau <anatol@google.com>
> Signed-off-by: Anatol Pomazau <anatol@google.com>
> Co-developed-by: Tahsin Erdogan <tahsin@google.com>
> Signed-off-by: Tahsin Erdogan <tahsin@google.com>
> Co-developed-by: Frank Mayhar <fmayhar@google.com>
> Signed-off-by: Frank Mayhar <fmayhar@google.com>
> Co-developed-by: Junho Ryu <jayr@google.com>
> Signed-off-by: Junho Ryu <jayr@google.com>
> Co-developed-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Khazhismel Kumykov <khazhy@google.com>
> Signed-off-by: Bharath Ravi <rbharath@google.com>
> Co-developed-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> ---
>  drivers/scsi/scsi_transport_iscsi.c | 46 +++++++++++++++++++++++++++++
>  include/scsi/scsi_transport_iscsi.h |  1 +
>  2 files changed, 47 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 417b868d8735..7251b2b5b272 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -36,6 +36,12 @@ EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_session);
>  EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_tcp);
>  EXPORT_TRACEPOINT_SYMBOL_GPL(iscsi_dbg_sw_tcp);
>  
> +static bool kern_conn_failure;
> +module_param(kern_conn_failure, bool, S_IRUGO|S_IWUSR);
> +MODULE_PARM_DESC(kern_conn_failure,
> +		 "Allow the kernel to detect and disable broken connections "
> +		 "without requiring userspace intervention");
> +
>  static int dbg_session;
>  module_param_named(debug_session, dbg_session, int,
>  		   S_IRUGO | S_IWUSR);
> @@ -84,6 +90,12 @@ struct iscsi_internal {
>  	struct transport_container session_cont;
>  };
>  
> +/* Worker to perform connection failure on unresponsive connections
> + * completely in kernel space.
> + */
> +static void stop_conn_work_fn(struct work_struct *work);
> +static DECLARE_WORK(stop_conn_work, stop_conn_work_fn);
> +
>  static atomic_t iscsi_session_nr; /* sysfs session id for next new session */
>  static struct workqueue_struct *iscsi_eh_timer_workq;
>  
> @@ -1609,6 +1621,7 @@ static DEFINE_MUTEX(rx_queue_mutex);
>  static LIST_HEAD(sesslist);
>  static DEFINE_SPINLOCK(sesslock);
>  static LIST_HEAD(connlist);
> +static LIST_HEAD(connlist_err);
>  static DEFINE_SPINLOCK(connlock);
>  
>  static uint32_t iscsi_conn_get_sid(struct iscsi_cls_conn *conn)
> @@ -2245,6 +2258,7 @@ iscsi_create_conn(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
>  
>  	mutex_init(&conn->ep_mutex);
>  	INIT_LIST_HEAD(&conn->conn_list);
> +	INIT_LIST_HEAD(&conn->conn_list_err);
>  	conn->transport = transport;
>  	conn->cid = cid;
>  
> @@ -2291,6 +2305,7 @@ int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
>  
>  	spin_lock_irqsave(&connlock, flags);
>  	list_del(&conn->conn_list);
> +	list_del(&conn->conn_list_err);
>  	spin_unlock_irqrestore(&connlock, flags);
>  
>  	transport_unregister_device(&conn->dev);
> @@ -2405,6 +2420,28 @@ int iscsi_offload_mesg(struct Scsi_Host *shost,
>  }
>  EXPORT_SYMBOL_GPL(iscsi_offload_mesg);
>  
> +static void stop_conn_work_fn(struct work_struct *work)
> +{
> +	struct iscsi_cls_conn *conn, *tmp;
> +	unsigned long flags;
> +	LIST_HEAD(recovery_list);
> +
> +	spin_lock_irqsave(&connlock, flags);
> +	if (list_empty(&connlist_err)) {
> +		spin_unlock_irqrestore(&connlock, flags);
> +		return;
> +	}
> +	list_splice_init(&connlist_err, &recovery_list);
> +	spin_unlock_irqrestore(&connlock, flags);
> +
> +	mutex_lock(&rx_queue_mutex);
> +	list_for_each_entry_safe(conn, tmp, &recovery_list, conn_list_err) {
> +		conn->transport->stop_conn(conn, STOP_CONN_RECOVER);
> +		list_del_init(&conn->conn_list_err);
> +	}
> +	mutex_unlock(&rx_queue_mutex);
> +}
> +
>  void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>  {
>  	struct nlmsghdr	*nlh;
> @@ -2412,6 +2449,15 @@ void iscsi_conn_error_event(struct iscsi_cls_conn *conn, enum iscsi_err error)
>  	struct iscsi_uevent *ev;
>  	struct iscsi_internal *priv;
>  	int len = nlmsg_total_size(sizeof(*ev));
> +	unsigned long flags;
> +
> +	if (kern_conn_failure) {
> +		spin_lock_irqsave(&connlock, flags);
> +		list_add(&conn->conn_list_err, &connlist_err);
> +		spin_unlock_irqrestore(&connlock, flags);
> +
> +		queue_work(system_unbound_wq, &stop_conn_work);
> +	}
>  

Do you need the modparam? I think you could handle this issue and the
similar one during shutdown at the same time, and you would always want
to do the kernel based error handler when userspace is not answering for
both cases.

You could do the following:

- Modify __iscsi_block_session so it does the stop_conn callout instead
of reverse, and change the iscsi_stop_conn/ISCSI_UEVENT_STOP_CONN:
related code accordingly.

- In iscsi_conn_error_event you would then do:

iscsi_multicast_skb();
iscsi_block_session();

- You can then drop the system_state check in iscsi_eh_cmd_timed_out
because those running commands are always handled by the stop_conn call
in __iscsi_block_session now.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5DF032BD.3070509%40redhat.com.
