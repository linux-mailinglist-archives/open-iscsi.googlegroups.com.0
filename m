Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBDETWH6QKGQEK5MMXLY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CF92AF9C5
	for <lists+open-iscsi@lfdr.de>; Wed, 11 Nov 2020 21:29:01 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id t3sf1320218oij.18
        for <lists+open-iscsi@lfdr.de>; Wed, 11 Nov 2020 12:29:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605126540; cv=pass;
        d=google.com; s=arc-20160816;
        b=hrP9Ig8NMzud7wH3VrOE2M1/vva50jzqKuA50vSePZ54DRQ0MQIotVQQbvosbkOO+9
         8YfUEdd0dli/vDfFXunINB9VqxWVAYOwVo3S/TEToeWt9FZR477DsNYDMB6YOKnTg4Ej
         2KzCkjj0NMM8oHl9aABTRaB90GdYAdThOlMGF/xnz3Pn8s5F5mTe2z/ZCCV75coYUSu7
         IDSMitkHh8dEhASgALjj/9RbDnZTsGPT20cVo5J8cNhE43vFit+V35QATHezRu5uhUts
         Lr6YBA3q1Lj8nJhey1t2Sbv26KziedH0yPOLs5fxGEx849zPKd7e0ctawxvf3f2+usWi
         3JnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=BCcV2ck7X3xXJodeE4YfqfbNt7sxPEtFMcG+4Cci5RA=;
        b=vrcO1e6fEJo4ftcvu/cOBGCf+LUqGqAk0jmXWbejJEYnyp4CtMH2cUtj4P4UIFy+1o
         xKXJzMB+GtZVc2FRfCVR7ENBojOZ/lqBcclFUQ0KUwKXD9mIvR4EtdLXCn3A9Yj1S49I
         ti9h2GrJVcuTQDdQqAra4iuB4al22LrU/unZ4T6Vada+PqBMqZuih6xTgNXqSQzkPS04
         UDYQA+jnKNmXYm0uoZkSaMfB+x7d0scRZ2awfFWglbF4KwPaEKEqRTr76W42EYPPnop6
         KimBGZ4NY6npjIvc0DutDUSuGQQuyOrfiMG/wEqoC2BAc0kAu8Kwgveaw/nNgKwlQHW7
         ALGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=jeAWaqsm;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BCcV2ck7X3xXJodeE4YfqfbNt7sxPEtFMcG+4Cci5RA=;
        b=MQ9NL6oynE9YRkH8ZQuGvWwjyiGK8vDLUnmRb/UsRzRSKx8vagGc+arDfe134Jh5FM
         gFtB8bFdD38kTqZgrcCoTty0DPCd+QXekWYHt//K6ebSMHnNh5UbR8QbdLpOt1Igq9TX
         pUNEWRoeEudaoLW5XBNkB8fDmsKzFJFZ9GUWEkoOwgI7sGRWFXOtcqMIGFEEWYLJoDUQ
         72g7wc6zzcJGqPo21XkQfZ98vwxxFRuZZs4dLerKSPHoGLeuI7gabKrJqHcDdW7xFhO/
         g4bstfG0Io1n3lY5oKNe9Y0y4ZXBFGIo9lbS/gZuJdrRgcZaKHQuhSqvA9lXYQcHlX0b
         B2gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BCcV2ck7X3xXJodeE4YfqfbNt7sxPEtFMcG+4Cci5RA=;
        b=Ll01hYjo0790GyaToZShYLIhjpBbWa86sa6wOjLKRkTOnC8EaXjbl7Esn5acYY2Dpt
         kpnekco7+RmdfDg/PpOs0BXWtuQM3x0jCXkm2hp+wwkY94S1InpTpce6R7fqYvy6JGDh
         4Jv0P+yusCc+9qArSjSG3/EJwuIoSjawkQZzxUC4f6PakvjpugZr9W2bkSMRSKrqWKeK
         3hcj0V0T7BAPfMPSpxWDAJsXYSvUk89W2b5NcVSAJDdyL8nUwomNKjzr7fJWeKJxOYIJ
         yDk8bGjZXMUG5StSnA/HBJwweVS8mCKc51Ky8gwXmf5tKBqJLX6Zs6zuHd9nN+9ZPEJb
         Dk5A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531sjgBjjAfx4g5BGxE/iY9sxR+GdJQ5YJQCYT/czxgdZl5sNDdL
	/PMx3YoZaAJS4pL7E5JLI4s=
X-Google-Smtp-Source: ABdhPJxDYk8ZE+osz+CotR2S8edRO7v3ObW+NP2AAhIj5yZT8iMtKECCMEgHsRBiki8W1B79OUxwAA==
X-Received: by 2002:a05:6830:18d5:: with SMTP id v21mr11495777ote.136.1605126540428;
        Wed, 11 Nov 2020 12:29:00 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:416:: with SMTP id 22ls160307oie.7.gmail; Wed, 11 Nov
 2020 12:29:00 -0800 (PST)
X-Received: by 2002:a05:6808:1cb:: with SMTP id x11mr1562987oic.81.1605126540036;
        Wed, 11 Nov 2020 12:29:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605126540; cv=none;
        d=google.com; s=arc-20160816;
        b=Byp6mrr2wiJOH3H7/73OkqjOeESOm6VcCSE41QfTN2I1Ui+ExwNuDxjvZ5rO1vz/Ju
         vlX6PQwAr6vO0OTAhx29Q6ZouY+o72nVZjhnH09w/a1np313uZNUj2cyKmxJAGfbddRt
         ZdYg26r5IH4gnQHy4Xx/tfceNUE8y+ptGp5zLq6U8dmKhbLQvxiWdovok4O31anajQaA
         e9zPsHSemdnnhhw8emR3qjvbg2YjxLLsxR7QHTHSYp+9/q7fe5c1pqn6V6Fl1B6FBrm2
         jGlYVslvAvHyDkCzdY9pes3/ACWbT643QWHQm6NFVjTloP4ZXEkqlkI51CZAJj5HmSYq
         FubQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=z0m64spdF50MULsGSMo+f8qtAM2sugLVg+9TtDk1V7c=;
        b=HxNNDoCENefoG3QP/EkG6WQYpqnwajHDfST1m7m6msXSbCxCBfwMsVkevxBid0/sWX
         Zm6X9+d6xA6mVQdQzFfSS7d6NWn8rcwsy7jitnT017O4wIDQNTUF3dKRjdVYfzZZiFo2
         +GN9S1yXlq59zWkPWr/WbKK/PdkhoK8gL40yZO36Mn9PAj6TQRgeuU/taMxld/kizrcn
         8GNz4IZe7wdwcFs5Afl36xf9ig1zjJjcNvP6ASdgWcv0840iO6DiCxdaBeq+Y8lpUKiE
         F2qu+C3h+ugr7B6eA0xU2adpB3hnevYQIRSPFK4f6NnSw6GEGlwtorZ+oWWtsWeoNCW3
         J67w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=jeAWaqsm;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id e22si309545oti.2.2020.11.11.12.28.59
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 12:29:00 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0ABKOIDw136527;
	Wed, 11 Nov 2020 20:28:57 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2130.oracle.com with ESMTP id 34nh3b2pcb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 20:28:57 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0ABKPGgK070617;
	Wed, 11 Nov 2020 20:28:57 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 34p55qccm5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 11 Nov 2020 20:28:57 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0ABKStTD015897;
	Wed, 11 Nov 2020 20:28:55 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 11 Nov 2020 12:28:55 -0800
Subject: Re: [PATCH v2] SCSI: libiscsi: fix NOP race condition
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org
Cc: open-iscsi@googlegroups.com, Lee Duncan <lduncan@suse.com>
References: <20201106193317.16993-1-leeman.duncan@gmail.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <e82c27ad-35f0-a9c8-f857-513e0b4aa0ca@oracle.com>
Date: Wed, 11 Nov 2020 14:28:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201106193317.16993-1-leeman.duncan@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9802 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 spamscore=0 phishscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=2
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011110118
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9802 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 mlxscore=0 spamscore=0 suspectscore=2
 mlxlogscore=999 impostorscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011110118
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=jeAWaqsm;
       spf=pass (google.com: domain of michael.christie@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On 11/6/20 1:33 PM, Lee Duncan wrote:
> From: Lee Duncan <lduncan@suse.com>
> 
> iSCSI NOPs are sometimes "lost", mistakenly sent to the
> user-land iscsid daemon instead of handled in the kernel,
> as they should be, resulting in a message from the daemon like:
> 
>> iscsid: Got nop in, but kernel supports nop handling.
> 
> This can occur because of the new forward- and back-locks,
> and the fact that an iSCSI NOP response can occur before
> processing of the NOP send is complete. This can result
> in "conn->ping_task" being NULL in iscsi_nop_out_rsp(),
> when the pointer is actually in the process of being set.
> 
> To work around this, we add a new state to the "ping_task"
> pointer. In addition to NULL (not assigned) and a pointer
> (assigned), we add the state "being set", which is signaled
> with an INVALID pointer (using "-1").
> 
> Changes since V1:
>   - expanded using READ_ONCE()/WRITE_ONCE() to the whole path
> 
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>   drivers/scsi/libiscsi.c | 23 +++++++++++++++--------
>   include/scsi/libiscsi.h |  3 +++
>   2 files changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 1e9c3171fa9f..f9314f1393fb 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -533,8 +533,8 @@ static void iscsi_complete_task(struct iscsi_task *task, int state)
>   	if (conn->task == task)
>   		conn->task = NULL;
>   
> -	if (conn->ping_task == task)
> -		conn->ping_task = NULL;
> +	if (READ_ONCE(conn->ping_task) == task)
> +		WRITE_ONCE(conn->ping_task, NULL);
>   
>   	/* release get from queueing */
>   	__iscsi_put_task(task);
> @@ -738,6 +738,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
>   						   task->conn->session->age);
>   	}
>   
> +	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
> +		WRITE_ONCE(conn->ping_task, task);
> +
>   	if (!ihost->workq) {
>   		if (iscsi_prep_mgmt_task(conn, task))
>   			goto free_task;
> @@ -941,8 +944,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
>           struct iscsi_nopout hdr;
>   	struct iscsi_task *task;
>   
> -	if (!rhdr && conn->ping_task)
> -		return -EINVAL;
> +	if (!rhdr) {
> +		if (READ_ONCE(conn->ping_task))
> +			return -EINVAL;
> +		WRITE_ONCE(conn->ping_task, INVALID_SCSI_TASK);
> +	}
>   
>   	memset(&hdr, 0, sizeof(struct iscsi_nopout));
>   	hdr.opcode = ISCSI_OP_NOOP_OUT | ISCSI_OP_IMMEDIATE;
> @@ -957,11 +963,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
>   
>   	task = __iscsi_conn_send_pdu(conn, (struct iscsi_hdr *)&hdr, NULL, 0);
>   	if (!task) {
> +		if (!rhdr)
> +			WRITE_ONCE(conn->ping_task, NULL);
>   		iscsi_conn_printk(KERN_ERR, conn, "Could not send nopout\n");
>   		return -EIO;
>   	} else if (!rhdr) {
>   		/* only track our nops */
> -		conn->ping_task = task;
>   		conn->last_ping = jiffies;
>   	}
>   
> @@ -984,7 +991,7 @@ static int iscsi_nop_out_rsp(struct iscsi_task *task,
>   	struct iscsi_conn *conn = task->conn;
>   	int rc = 0;
>   
> -	if (conn->ping_task != task) {
> +	if (READ_ONCE(conn->ping_task) != task) {
>   		/*
>   		 * If this is not in response to one of our
>   		 * nops then it must be from userspace.
> @@ -1923,7 +1930,7 @@ static void iscsi_start_tx(struct iscsi_conn *conn)
>    */
>   static int iscsi_has_ping_timed_out(struct iscsi_conn *conn)
>   {
> -	if (conn->ping_task &&
> +	if (READ_ONCE(conn->ping_task) &&
>   	    time_before_eq(conn->last_recv + (conn->recv_timeout * HZ) +
>   			   (conn->ping_timeout * HZ), jiffies))
>   		return 1;
> @@ -2058,7 +2065,7 @@ enum blk_eh_timer_return iscsi_eh_cmd_timed_out(struct scsi_cmnd *sc)
>   	 * Checking the transport already or nop from a cmd timeout still
>   	 * running
>   	 */
> -	if (conn->ping_task) {
> +	if (READ_ONCE(conn->ping_task)) {
>   		task->have_checked_conn = true;
>   		rc = BLK_EH_RESET_TIMER;
>   		goto done;
> diff --git a/include/scsi/libiscsi.h b/include/scsi/libiscsi.h
> index c25fb86ffae9..b3bbd10eb3f0 100644
> --- a/include/scsi/libiscsi.h
> +++ b/include/scsi/libiscsi.h
> @@ -132,6 +132,9 @@ struct iscsi_task {
>   	void			*dd_data;	/* driver/transport data */
>   };
>   
> +/* invalid scsi_task pointer */
> +#define	INVALID_SCSI_TASK	(struct iscsi_task *)-1l
> +
>   static inline int iscsi_task_has_unsol_data(struct iscsi_task *task)
>   {
>   	return task->unsol_r2t.data_length > task->unsol_r2t.sent;
> 

Reviewed-by: Mike Christie <michael.christie@oracle.com>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e82c27ad-35f0-a9c8-f857-513e0b4aa0ca%40oracle.com.
