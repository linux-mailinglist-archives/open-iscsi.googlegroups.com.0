Return-Path: <open-iscsi+bncBCHM7NWZ3UFBBPUQ7X5QKGQEF6KKMTQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 269E8287AAD
	for <lists+open-iscsi@lfdr.de>; Thu,  8 Oct 2020 19:11:28 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id 17sf1910521oie.4
        for <lists+open-iscsi@lfdr.de>; Thu, 08 Oct 2020 10:11:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602177087; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gr6sslNAcdNMqSPIs4g/NJ3b+4JX24sDhHhZIC8NWYQneiMA/oFv6MVWypEmvShN/e
         FmnPpa2UC6WPmaa/B2y3eqJivYtYXbtbA49xowNWJDmEMxB+ScR5PdVigUGlgmxXYSTY
         s4mqWremYVxqMQMP+xWJcomfmDjYSSqUOCf5htTd+wY0ejFrI3nahIIRHMvxWZwKJs2K
         lC7XYYBHRXzoIF6aYvU2F2djCqi1+iynxTETZeCWdgwvTO3wiMiSVVUrbejCPkEQZ+Xe
         yHdEGrPgA3dlWESihH4yYOkQDAZImEsHPHRygt9SltiaM+mKyTwlcXEjRYnqzBoRKBZ9
         pZeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=UE39NvtFYx3HlBmOkIgLwqgY65TSC/ov9WHfldhuU/I=;
        b=0Mj1EIhrtVHEZJEB21F19tMY7nJSNoNUPXhbZ7ud6dKmLCHilwNJ/eKYwMlFkXArlh
         uj/I+QiGJTdyGXJ3S2p9sPwritpo5b5wE0T8TrANeiZVFfmydfY4hjkUkB3E1nDk2FWe
         OhDn2gJ1CqI3yKsr97fEM0sF6j8mAbfHxpa23H3vy0JGe5GNskRtG2mHvS5ovpd9fPGt
         E1ABeTTdJAOBmxw0vPViKdFaS+F6LwJP1OLN2IDiKtbv+WxxAhgnXyfoOb4x+tQCJi2l
         tJYg2EW/ch6Ps8StO8r3hBb4l7MYc9eWIgGs9o+NnpvafmAgXCpLuZ+QRUahw/dgw8X/
         rRYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=KZwG7Q8s;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UE39NvtFYx3HlBmOkIgLwqgY65TSC/ov9WHfldhuU/I=;
        b=ZdBDh7li7P4M2TpDXFO+CkFEVyOvgEAIVhe0y/vPqwlY9f4VVTn9jq+8RA8VVBVdRY
         FzZ0c7oaYXluLE+tPxy1MzRaxofoVN64d/VdvvEoymjOdmirqsUAkr4bv/T1RWnFYQjL
         P7htUkYJaJnwebryubo+4jbij1ygNooh2Np4lF49wDtW3wY10Ojdf9cb3VsGh59A+gDi
         Ag9ImthuyneiUmqoZu1xPRQpNRWeG1jY/HPNbAbFYnFu5i2gKkmVCpqtiDrpkJGE9q9n
         rm7pVRdAvvQ/dwmEnS0UR19Gn1ktVSXs5cseFW5PunJJSCvZG26iYLYkREZclbi8bY2j
         i+qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UE39NvtFYx3HlBmOkIgLwqgY65TSC/ov9WHfldhuU/I=;
        b=NXOEGfAD2ywA17Jd8DWTH9qUs4LQWTqi1h5Wd/RBkw9cmJTas/3rJjn4ZG2hMpnsOT
         MOu2hVI7bd6r57VniZqktlnH8uzi6rPpuz7RWJvFsA5uVXeCbpjY/GVPl4C5CHO5rnaq
         /Psv4i/Xn/gOK3lyxZo1xKyWpbpbKx93U5kAIWRp4myq4yJYOhXapLRmoGzeYZty5WP+
         77z6daXLjP1k19ZPLjUbPDMajQIBDTwAvrgaTanM4uq3G0RxUXKgBAbGSeCy62gQfVtX
         ngzmwmoIANp3lb8twe236bHXTskVLFWR03vui3EhZn3ujZ6iItHFDMd+f6YRhVykGp8a
         G37A==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM5314gLHd/QuxjHXu0irenTjUuOM2c0i/xwij+OQwwi0IwSMmydGi
	DNHg4bbxkxE9i63zhGLQYKg=
X-Google-Smtp-Source: ABdhPJzieIprkPuI8MmGJw4VciUJqhvESry7xRfeydCioA7Ey+lh34tCK5Vt316U+PacJcPQsOi1WA==
X-Received: by 2002:a05:6808:34b:: with SMTP id j11mr4498347oie.51.1602177086900;
        Thu, 08 Oct 2020 10:11:26 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:85:: with SMTP id a5ls1447280oto.10.gmail; Thu, 08
 Oct 2020 10:11:26 -0700 (PDT)
X-Received: by 2002:a9d:a4e:: with SMTP id 72mr6182057otg.50.1602177086428;
        Thu, 08 Oct 2020 10:11:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602177086; cv=none;
        d=google.com; s=arc-20160816;
        b=HpJG1FcxWPvg2yy+D/QzcDfdtNQSjv6m+NCw/g5wWFcseldU6gsZ35T69tj8UjoZqS
         RPe1hhDc3Jqff65269VvSA5NLavCxkB0j8qQIoEiVsiup1tTeSiGoTJj7I1jUL3GqbcZ
         R2BJS9Pg6DKDJG3IgpmZSL2rfH4t83hNz+dejzX+at20613qD8ofN3TQCIhgMJgmrxvG
         3AQ7aR2ozjNT/t+qQWRmuOjb+b6rrfQl6kl3S5T2CXkT6fzsV6bXa406I3uPLjvIg5Sc
         p/xlQYl3VWlJimZXlwyErWo7ttNsSGQ8O3qlExlz17zCGsIm8GXo10xgLb42/i6O+ouD
         JDTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=YFmg0lJdUbAFjHtInWo6Z7HAeezH7FiwCiDQdlKA67k=;
        b=MFgQKEq8NwU7gfm14N+Rd6/4n/6HcHtayn25q7dyycPYUCSec5Rq3zNIETn8kIgaIP
         akoGI2PSHt0KuG08RPKbjCSfnD2DAAEe9XM8v4vsdOXFr6gKtmUVE7WF7FYBuAg0NY2s
         kGAlB5Mgc6uGdc1SByqJdmuRFM/ti8wFAOukNJAIYNE5CA21yp5Xh9Y2Y0WEUouoAmUQ
         2vA/DbDGrNvpy53tDwd3HwHUvIMW9JWcbTnxEuOQo5x4zWWKaR/os2gwkCMj5n2gpsws
         sxXBUoG1MsC7E2UJp5H/YaRiz+ajxb2ndMVWTB7BbQryzicWseRsjr5D63Rs7Yw3Az4q
         Xb4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=KZwG7Q8s;
       spf=pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=michael.christie@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id o22si638685otk.2.2020.10.08.10.11.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2020 10:11:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.christie@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 098GsLY1177179;
	Thu, 8 Oct 2020 17:11:25 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by aserp2130.oracle.com with ESMTP id 33xetb9391-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 08 Oct 2020 17:11:25 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 098GtOIL043089;
	Thu, 8 Oct 2020 17:11:25 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 33y2vrajqq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 08 Oct 2020 17:11:25 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 098HBNRC025791;
	Thu, 8 Oct 2020 17:11:23 GMT
Received: from [20.15.0.202] (/73.88.28.6)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 08 Oct 2020 10:11:23 -0700
Subject: Re: [PATCH v2 1/1] scsi: libiscsi: fix NOP race condition
To: lduncan@suse.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, open-iscsi@googlegroups.com,
        martin.petersen@oracle.com, mchristi@redhat.com, hare@suse.com
References: <cover.1601058301.git.lduncan@suse.com>
 <02b452b2e33d0728091d27d44794934c134a803e.1601058301.git.lduncan@suse.com>
From: Mike Christie <michael.christie@oracle.com>
Message-ID: <5e1fb4eb-dd10-dbad-3da9-e8affc4f5cf0@oracle.com>
Date: Thu, 8 Oct 2020 12:11:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <02b452b2e33d0728091d27d44794934c134a803e.1601058301.git.lduncan@suse.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9768 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 malwarescore=0 suspectscore=2 spamscore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2010080126
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9768 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 mlxscore=0
 clxscore=1011 priorityscore=1501 adultscore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 malwarescore=0 suspectscore=2 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2010080126
X-Original-Sender: michael.christie@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=KZwG7Q8s;
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

On 9/25/20 1:41 PM, lduncan@suse.com wrote:
> From: Lee Duncan <lduncan@suse.com>
> 
> iSCSI NOPs are sometimes "lost", mistakenly sent to the
> user-land iscsid daemon instead of handled in the kernel,
> as they should be, resulting in a message from the daemon like:
> 
>> iscsid: Got nop in, but kernel supports nop handling.
> 
> This can occur because of the forward- and back-locks
> in the kernel iSCSI code, and the fact that an iSCSI NOP
> response can be processed before processing of the NOP send
> is complete. This can result in "conn->ping_task" being NULL
> in iscsi_nop_out_rsp(), when the pointer is actually in
> the process of being set.
> 
> To work around this, we add a new state to the "ping_task"
> pointer. In addition to NULL (not assigned) and a pointer
> (assigned), we add the state "being set", which is signaled
> with an INVALID pointer (using "-1").
> 
> Signed-off-by: Lee Duncan <lduncan@suse.com>
> ---
>  drivers/scsi/libiscsi.c | 13 ++++++++++---
>  include/scsi/libiscsi.h |  3 +++
>  2 files changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/scsi/libiscsi.c b/drivers/scsi/libiscsi.c
> index 1e9c3171fa9f..cade108c33b6 100644
> --- a/drivers/scsi/libiscsi.c
> +++ b/drivers/scsi/libiscsi.c
> @@ -738,6 +738,9 @@ __iscsi_conn_send_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
>  						   task->conn->session->age);
>  	}
>  
> +	if (unlikely(READ_ONCE(conn->ping_task) == INVALID_SCSI_TASK))
> +		WRITE_ONCE(conn->ping_task, task);
> +
>  	if (!ihost->workq) {
>  		if (iscsi_prep_mgmt_task(conn, task))
>  			goto free_task;

I think the API gets a little weird now where in some cases
__iscsi_conn_send_pdu checks the opcode to see what type of request
it is but above we the caller sets the ping_task.

For login, tmfs and passthrough, we assume the __iscsi_conn_send_pdu
has sent or cleaned up everything. I think it might be nicer to just
have __iscsi_conn_send_pdu set the ping_task field before doing the
xmit/queue call. It would then work similar to the conn->login_task
case where that function knows about that special task too.

So in __iscsi_conn_send_pdu add a "if (opcode == ISCSI_OP_NOOP_OUT)",
and check if it's a nop we need to track. If so set conn->ping_task.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5e1fb4eb-dd10-dbad-3da9-e8affc4f5cf0%40oracle.com.
