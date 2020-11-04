Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBRN4RT6QKGQEZ4LWN7Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D72BB2A6FB0
	for <lists+open-iscsi@lfdr.de>; Wed,  4 Nov 2020 22:33:58 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id t11sf3696213qvp.7
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Nov 2020 13:33:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604525638; cv=pass;
        d=google.com; s=arc-20160816;
        b=CQoJeo4rAFE2AH6SfiGXfBUo+bkW8tGMukxiifTxfvzO3oezNlO9zMuKH//6GM8X5S
         5s67KGiz8TzeRRJQiJnxkNRDkr+BAtVm0pZ1LxegWJJr/7vcA35PHQPElcWQnmkrxy4e
         hxLXP6emh7HiV01oBUD7iLeFo2JMRYm8OZtHXNXX8rTuAuLTolZZ4wPZDCFq1mPNwKf7
         VfrbPM/pNcSuLeDY/XUzIhxw0bYdD0/YHuOdRaNxXFKzXgD+ObQHi+ARp6gEA9NOG3BW
         55wYW42IM7uulQ6d1jqasotiRNqcw0sdTm1vBl39yVJXDW8vMKaLtO18lA6Ty7yZaqfE
         zh/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=ROCZT5cAPhnwNEIWwnvvAmafFvuCEbBsNT19dkpNTQA=;
        b=NABVBuKB/bsPEq0Ti9KfnQixiNg/rg1JxnSGW4HqVzpkgj9TmTr5Gg9+jrVjpJQScg
         eyk70RibcCaY6WZnSn0VZAKQ/P8KjAr6FAvI5CXE8yHfImqiIBAVrcvaq5Zi0E/FvI7X
         5BFgA+mKVxERBjBl4JxHtfWkuSN0Bx3Yb9/u3SGRvf7b8nFN9Aazc3HKLQ2CCV+9KXjr
         sgDkiiMuBYTtG8ivGahO/W75qUZTpsUnrffg2Byef5GAYw3kAZTdIllMajGuG1sdSlrr
         ztFnx8ONZ82kpIqy18j59lVKv3rkAeoESKK/axLMflPtKtKs4yq5/s0lBjlvZpvEDBqv
         pwxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="DRONj/Ts";
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ROCZT5cAPhnwNEIWwnvvAmafFvuCEbBsNT19dkpNTQA=;
        b=AiA8sxIZT+AFtyyANEVXg1lZ8g9ecFJH5HqYD2T9RCYwCRFK2wZmlWkopLWCt6P5d/
         Z2inN0vARzff5ofA5z2nlvJ1VXJMZr5yMufnQTyTEqe8nhmJUDT3i2+ewaq9wA9uaknN
         l3xbwheTMrhn0NWdNd3oi6exdrVfG/wE6YlRCC2op6AIG7gI5WO1SprW2ISU51ik4ZQw
         4E0tP2IgMz7DPma4/jXxES1ypwTN3Ba3YwLTPsS4I84sdo2uKvI8SmHaVdVeO0fKyuCp
         uWLUs/gHHsHX8+dfMsRkZGg3qNInDXrH3pyX9R13oIyR8LkkAl/cdSpucUa+J0PO0GIm
         xPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ROCZT5cAPhnwNEIWwnvvAmafFvuCEbBsNT19dkpNTQA=;
        b=jzmxV3jqr+jwfxsYNKJh0MQesQ/Vuju/6LLWntEoHzI8For7moC27TLtKV7r/za5bc
         7dQwqlFEM26ov8UeHaks/SpNX2VZyiJv9AjCg4R6tsLRP5Yijvq8zyVDlnBSS+2bPdGA
         ifCtd8lOi66FfRyolL4jJ3G6BLci07fzwzEe2iMTTUKvMhIklYLhfbszx+e3b1rqz7X+
         XeoqPTBBDUI0JTT5ZQDZcoYVDNPcWRaP9LJ5v4nSBQ1TBBVAAJOx5Do1bY33clrVvFYa
         CF87VPZM4k/VmfFRhVuJANeC9b1lsqnMOMLqzO+exveHciZ8bmwTqb6xSiPca+19Gkpw
         iH7g==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531lhd7eAGoh4423hGa3XrAXZvUL/PJ9ZZuzqDwa+pCSF8zj3aUS
	E7MUoWSBjUBIXI24zSVllkk=
X-Google-Smtp-Source: ABdhPJzJ4LqmlJDwUFympsgpyhnB5qltqRrYL9PtFOU5Uqjo6P5u2RBwxUw1uBTa06TGIUyOJ/XtWg==
X-Received: by 2002:a05:620a:230:: with SMTP id u16mr219853qkm.212.1604525637950;
        Wed, 04 Nov 2020 13:33:57 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:620a:34b:: with SMTP id t11ls2008540qkm.4.gmail; Wed, 04
 Nov 2020 13:33:57 -0800 (PST)
X-Received: by 2002:ae9:f503:: with SMTP id o3mr207388qkg.356.1604525637349;
        Wed, 04 Nov 2020 13:33:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604525637; cv=none;
        d=google.com; s=arc-20160816;
        b=1H0O7uNtHFIBNIutxCKq/jgS5MBFoV2939kySqeMP/HLI15QiU9QT0ArLmV1Ye7yAT
         JUO/zt01aA5ceIDLSbZlT2BaK9tKxEnZQpsTw240Ym4ScK2qbE0RbRvJgMknNPWi2LZf
         rT64gHUX5OhuDgqGA6BUCw11lytNy9sYdsMaH7Hj75mYYCIC7wNO+RMzCXa/R1O9GWRj
         IOI0eFiLq2JUAyfpMceCv2I4wNBPyRM20eU7iu8mLY67A1ASe8D0HEWnlqY6dSBpKSMy
         qYHfyJnlX7Q50uaTKdgz3MR3eydHM1egC+ej+vf7CVRY9prlux6RfB2Eom6z7yAnTdZn
         BdmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=JYHHlZoYUpmuu1gjzTNnNvfQg6haTYhkH7OnQGcSmGM=;
        b=XCq5F/uBAFpHpx44H6McUUx3iAcvEgQRiaVoTrlT+fGm6IJM/wQWyPtvuJvL4Hfd7v
         l5sqL5uwZoI563o/FhZsPNEznmRpyq7taafX64B41Gp61oLUNVUs2d8aCkrSKtXcl9l0
         sZ9pkIjQ+KTpaQWzuTkU7xTKKgEnKT0QOz6ph61QsFMBWKrKOv00XaTB0z4EUBsAMW5t
         WSPWErCFIxn6n5S0hIVUv3IQnQq8D9lQNk9Sy7sqH9PeV0P1MgfHhiBVGBWUnNnUn1oA
         1KW2Z5zyuKiWJmDpyfgp1ZJa8KCr/VyXojogUPaxlprScC97lHTSFJWvFWWfXEswHvbW
         qUng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b="DRONj/Ts";
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id g16si72042qtp.0.2020.11.04.13.33.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 13:33:57 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A4L9cpl087353;
	Wed, 4 Nov 2020 21:33:55 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2130.oracle.com with ESMTP id 34hhb290hv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 04 Nov 2020 21:33:55 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0A4LAWZ4091802;
	Wed, 4 Nov 2020 21:33:54 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3020.oracle.com with ESMTP id 34hw0kj4vc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 04 Nov 2020 21:33:54 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0A4LXrAW001243;
	Wed, 4 Nov 2020 21:33:53 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 04 Nov 2020 13:33:52 -0800
Subject: Re: [PATCH] scsi: libiscsi: fix NOP race condition
To: Lee Duncan <leeman.duncan@gmail.com>, linux-scsi@vger.kernel.org
Cc: open-iscsi@googlegroups.com, Lee Duncan <lduncan@suse.com>
References: <20200918210947.23800-1-leeman.duncan@gmail.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <f0c9b3ff-7d93-9c2b-d405-e52fb4aa8c37@oracle.com>
Date: Wed, 4 Nov 2020 15:33:51 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20200918210947.23800-1-leeman.duncan@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9795 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 adultscore=0 bulkscore=0
 mlxscore=0 suspectscore=2 spamscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011040154
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9795 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0 suspectscore=2
 clxscore=1011 mlxlogscore=999 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011040154
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b="DRONj/Ts";
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

On 9/18/20 4:09 PM, Lee Duncan wrote:
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
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>   drivers/scsi/libiscsi.c | 11 ++++++++++-
>   include/scsi/libiscsi.h |  3 +++
>   2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 1e9c3171fa9f..5eb064787ee2 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
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
> @@ -941,6 +944,11 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
>           struct iscsi_nopout hdr;
>   	struct iscsi_task *task;
>   
> +	if (!rhdr) {
> +		if (READ_ONCE(conn->ping_task))
> +			return -EINVAL;
> +		WRITE_ONCE(conn->ping_task, INVALID_SCSI_TASK);
> +	}
>   	if (!rhdr && conn->ping_task)
>   		return -EINVAL;
>   
> @@ -957,11 +965,12 @@ static int iscsi_send_nopout(struct iscsi_conn *conn, struct iscsi_nopin *rhdr)
>   
>   	task = __iscsi_conn_send_pdu(conn, (struct iscsi_hdr *)&hdr, NULL, 0);
>   	if (!task) {
> +		if (!rhdr)
> +			WRITE_ONCE(conn->ping_task, NULL);

I don't think you need this. If __iscsi_conn_send_pdu returns NULL, it 
will have done __iscsi_put_task and done this already.

>   		iscsi_conn_printk(KERN_ERR, conn, "Could not send nopout\n");
>   		return -EIO;
>   	} else if (!rhdr) {
>   		/* only track our nops */
> -		conn->ping_task = task;
>   		conn->last_ping = jiffies;
>   	}

Why in the send path do we always use the READ_ONCE/WRITE_ONCE, but in 
the completion path like in iscsi_complete_task we don't.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/f0c9b3ff-7d93-9c2b-d405-e52fb4aa8c37%40oracle.com.
