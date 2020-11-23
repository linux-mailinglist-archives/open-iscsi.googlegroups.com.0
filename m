Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBJ4B6H6QKGQEPQ3RG7Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id A95A42C191A
	for <lists+open-iscsi@lfdr.de>; Tue, 24 Nov 2020 00:07:20 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id s12sf8544414vke.18
        for <lists+open-iscsi@lfdr.de>; Mon, 23 Nov 2020 15:07:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606172839; cv=pass;
        d=google.com; s=arc-20160816;
        b=n47BVrWVwBAa4kPg4oPPq/UokR6tkHOP6GZmV5QFZeSZsWJC307rTcvf6DKMo3afOs
         STB5lJo4ga5SDblhg2gIvtrZupJGjp0J2O8c14WEcXQSQa3siyOMvGLCMVYLohH3Uevo
         eSwREAW9+NN0aGE8wchZlVlSNENGYm2++ObeGxxWBUh3rnkaokpm5WsPouKutVu7MzfB
         Kss2eoWVeJz9yIST1MCzfqFpZm/H82jbl5zXbbyT39khoJJPWsz8gTqJtE7MWwdpS70K
         hC4MHwVoNSEZZtdPHe0kwhgm9jdr6v6khWN5eMGwYR9PkuCtnihUr46Nz/42GNVDDnZZ
         AWew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:references:message-id
         :cc:date:in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=v5LswsW2/d3SbqCd5v1ixg5wBZxjZhVpDvfUII4iDFY=;
        b=VFdKVwSG7AOV3urkY97oWvKrsVFAU4TUwkAipea5emloaRY6KGIxpKBbgar91gQAQZ
         f/tuPcuOuG7k2Hx54mQOsfq/ceITHNuF8AGi/xqFnhWcKb1zCuUzJZiq/BCIIw2j2jG8
         e6NGaQRsIfEL4Uvzi1oWJkpoVi96mdN3Stry2zVxz2D6bDE0qKeVD7Mrj6TWLmTgKLBb
         l2/jhJio9HKs3zPYP0XYGxq4RHKNfWDtUDhovsKxOvvQEVpBH257NqiRdzBWRGNkJeXP
         q3RM1IGjRj+ctaWJZrKQexFcszGAqzqg8x10ZD5PI//pTPnlgW3hs8M/2+1kX2/YVM42
         wf9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=jLoLuYGo;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc:message-id
         :references:to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v5LswsW2/d3SbqCd5v1ixg5wBZxjZhVpDvfUII4iDFY=;
        b=E6jQG272J6+PpgsuNgz2u5w6w7qfbg7xnRvfFIKAU1AT+sCtkw/PlTsx9XEIS92FTa
         zyINgnKhPr6ZE+6Ole5/JhSJs+pno83whq8LEQt0td8WoZPBbCpVFep3Y8SZ5b2nTHWh
         y7FFw06ULah4GsFugMMH0Lhe1dO6+xhOy6vMAyFhLHgBVHyfxWRT5ewY5ercf6fOVhFo
         DFzDGfr/p/6tnCbmsBpH//PGt815IxiPH+GFPOtHLYOTJ/1PFQGDyqC/oqFUQJzEegBS
         +187/2K86cfjrPAp6B5E4nt1URf0CTVrI5M4tabIPnVecmfg0KWHGQp8Xy3/R+GNCGlU
         Rmlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:message-id:references:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v5LswsW2/d3SbqCd5v1ixg5wBZxjZhVpDvfUII4iDFY=;
        b=mKYoNSq05kbDdWzILUpHaapcLz3dR7kJSM5T/9U+/kfkaNpDaz4FIDnAQ5MD3dZ4Cm
         YpmIsg/4yT0e3knSd0EVPQT2RpbhFClOPJgg/E33K5W9ZK+ZvnCPk2ATDBhhvEhGDcsu
         puvF/fhJ6zWblSs9fd0t2A+8CYj8jSCpVro1gSSEMmtJZXW3uJNocJoL3ZczPaCvoXGy
         c3a/hzjE1BqBLm/z5afskSLjA/+KBoXqkjHeQXr1aUm2Lne2uDdkuAnRxuE/35PsLgdB
         M1Xw7sLDkDkeNsHha2gH5tT/pFj5UycKZU9QUjhAqPFm1lK/TNzb7J1eKwyv84dKG0TY
         RXqQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5328PjXboyYn2m7Hxga47f5iDqC7m3uOYxXt2nRZBLCDmLOJSwn8
	4hklZqinS2TX0VDadeWIkNk=
X-Google-Smtp-Source: ABdhPJyNnvkLYi9R+uetXtP5dFuxsjzbRXqP/iifEcy3w8U0jkouapB5g4HV6Zeqtb3SXYWUbwp4yw==
X-Received: by 2002:a67:7d01:: with SMTP id y1mr1943053vsc.52.1606172839747;
        Mon, 23 Nov 2020 15:07:19 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6102:2046:: with SMTP id q6ls2104529vsr.3.gmail; Mon, 23
 Nov 2020 15:07:19 -0800 (PST)
X-Received: by 2002:a67:68c6:: with SMTP id d189mr1855861vsc.10.1606172839329;
        Mon, 23 Nov 2020 15:07:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606172839; cv=none;
        d=google.com; s=arc-20160816;
        b=ybr3G2RmhloVW0jmHzKlXK/8K9HlY/Xskr2cr/4csmdHGV95nQ9pqN/Vs31uIhi4Pg
         CnOkms2+trg7sJb7Ro5XsetPhz9hjSCRRYtfiriUW9q59qC1aLacr7u5J/X+55vxovP3
         Q6CRYkGL1AaAhnuQJRNapvOfsDEUky9PG5XtUssRDPulpx/065i0sb9yOvLSdwOYfkqX
         NpOKX0+rrwk+AZNQp1ktGWXRi1xvi63zyW+iNfgALRm8FgHj+fPfGN1rMGXHlJi5i6FQ
         JE0/oWSq6FpUtmGxGfO44Y+qDlqp4jAIj8DXkTbvQPG/Z5TA4V4hTI2yNFK6oXdLJ2EL
         aOgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=K1DhUzzU97l1ZYnVyDXejVMftTY19HzCvuzkVYTz7Co=;
        b=D/0Ay5R+T+j41JA7ZuYiLhbjn9VNHeaduF6iRqdFsHTDlH2ljvtOb3H8VwYj31vtX6
         xPV9nOYlO6Ia+MVU8yCDdt9L404WfE39tH0Mluaf+/TR/443zFvcApl2SINXuEGqsP1T
         ZYmfRyMUTT/v7r9sYapfAuXEZ6JayWs9rVAx9l1nCGkjtmVqOoD7DYmRqSpGl7/E4Tk8
         uC6IDxyiufQfDbDBDpz3YBB+a2ywGyB6bmJAH1y2BmW+ohrvjFkaB9NS77svGPX1YuvB
         ZxOXTBhLVIsCNZlzL2rOL+fs5F//are7033+u2KhKXFqEtDmhPlUYvTtS5qVyW/bGM4q
         MFHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=jLoLuYGo;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id k67si627247vkg.1.2020.11.23.15.07.19
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 15:07:19 -0800 (PST)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0ANMsX12113282;
	Mon, 23 Nov 2020 23:07:18 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2130.oracle.com with ESMTP id 34xrdar0cr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 23 Nov 2020 23:07:18 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0ANMnoSS171914;
	Mon, 23 Nov 2020 23:07:17 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3020.oracle.com with ESMTP id 34ycnrkp0e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 23 Nov 2020 23:07:17 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0ANN7GpE028459;
	Mon, 23 Nov 2020 23:07:16 GMT
Received: from [20.15.0.5] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 23 Nov 2020 15:07:15 -0800
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: Re: [PATCH] iscsi: Do Not set param when sock is NULL
From: Michael Christie <michael.christie@oracle.com>
X-Priority: 3
In-Reply-To: <9df96d73-015c-4de6-96fa-2f315b066909@default>
Date: Mon, 23 Nov 2020 17:07:14 -0600
Cc: Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, Junxiao Bi <junxiao.bi@oracle.com>
Message-Id: <05277786-2E1F-432D-AE73-F39565C6BEA4@oracle.com>
References: <1a8aaa17-b1a3-4d6a-b87a-ff49d61a0d0b@default>
 <9df96d73-015c-4de6-96fa-2f315b066909@default>
To: Gulam Mohamed <gulam.mohamed@oracle.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9814 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 suspectscore=2
 mlxlogscore=999 phishscore=0 spamscore=0 malwarescore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011230147
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9814 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 impostorscore=0 mlxscore=0
 mlxlogscore=999 spamscore=0 phishscore=0 clxscore=1011 malwarescore=0
 lowpriorityscore=0 adultscore=0 suspectscore=2 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011230147
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=jLoLuYGo;
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



> On Nov 4, 2020, at 11:40 PM, Gulam Mohamed <gulam.mohamed@oracle.com> wrote:
> 
> Description
> =========
> 1. This Kernel panic could be due to a timing issue when there is a race between the sync thread and the initiator was processing of a login response from the target. The session re-open can be invoked from two places
>          a.	Sessions sync thread when the iscsid restart
>          b.	From iscsid through iscsi error handler
> 2. The session reopen sequence is as follows in user-space (iscsi-initiator-utils)
>          a.	Disconnect the connection
>          b.	Then send the stop connection request to the kernel which releases the connection (releases the socket)
>          c.	Queues the reopen for 2 seconds delay
>         d.	Once the delay expires, create the TCP connection again by calling the connect() call
>         e.	Poll for the connection
>          f.	When poll is successful i.e when the TCP connection is established, it performs
> 	i. Creation of session and connection data structures
> 	ii. Bind the connection to the session. This is the place where we assign the sock to tcp_sw_conn->sock
> 	iii. Sets the parameters like target name, persistent address etc .
> 	iv. Creates the login pdu
> 	v. Sends the login pdu to kernel
> 	vi. Returns to the main loop to process further events. The kernel then sends the login request over to the target node
> 	g. Once login response with success is received, it enters into full feature phase and sets the negotiable parameters like max_recv_data_length, max_transmit_length, data_digest etc .
> 3. While setting the negotiable parameters by calling "iscsi_session_set_neg_params()", kernel panicked as sock was NULL
> 
> What happened here is
> --------------------------------
> 1.	Before initiator received the login response mentioned in above point 2.f.v, another reopen request was sent from the error handler/sync session for the same session, as the initiator utils was in main loop to process further events (as 
> 	mentioned in point 2.f.vi above). 
> 2.	While processing this reopen, it stopped the connection which released the socket and queued this connection and at this point of time the login response was received for the earlier one


To make sure I got this you are saying before iscsi_sw_tcp_conn_stop calls iscsi_sw_tcp_release_conn that the recv path has called iscsi_recv_pdu right?


> 3.	The kernel passed over this response to user-space which then sent the set_neg_params request to kernel
> 4.	As the connection was stopped, the sock was NULL and hence while the kernel was processing the set param request from user-space, it panicked
> 
> Fix
> ----
> 1.	While setting the set_param in kernel, we need to check if sock is NULL
> 2.	If the sock is NULL, then return EPERM (operation not permitted)
> 3.	Due to this error handler will be invoked in user-space again to recover the session
> 
> Signed-off-by: Gulam Mohamed <gulam.mohamed@oracle.com>
> Reviewed-by: Junxiao Bi <junxiao.bi@oracle.com>
> ---
> diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
> index df47557a02a3..fd668a194053 100644
> --- a/drivers/scsi/iscsi_tcp.c
> +++ b/drivers/scsi/iscsi_tcp.c
> @@ -711,6 +711,12 @@ static int iscsi_sw_tcp_conn_set_param(struct iscsi_cls_conn *cls_conn,
>        struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
>        struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
> 
> +       if (!tcp_sw_conn->sock) {
> +               iscsi_conn_printk(KERN_ERR, conn,
> +                               "Cannot set param as sock is NULL\n");
> +               return -ENOTCONN;
> +       }
> +

I think this might have 2 issues:

1. It only fixes iscsi_tcp. What about other drivers that free/null resources/fields in ep_disconnect that we layer need to access in the set_param callback (the cxgbi drivers)?

2. What about drivers that do not free/null fields (be2iscsi, bnx2i, ql4xxx and qedi) so the set_param calls end up just working. What state will userspace be in where we have logged in, but iscsid also thinks we are in the middle of trying to login?

I think we could do:

1. On ep_disconnect and stop_conn set some iscsi_cls_conn bit that indicates set_param calls for connection level settings should fail. scsi_transport_iscsi could set and check this bit for all drivers.
2. On bind_conn clear the bit.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/05277786-2E1F-432D-AE73-F39565C6BEA4%40oracle.com.
