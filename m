Return-Path: <open-iscsi+bncBDVIJONZ3YDRB3PYZ75QKGQEPO5V57I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D4527DEFA
	for <lists+open-iscsi@lfdr.de>; Wed, 30 Sep 2020 05:33:03 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id q95sf135448pja.0
        for <lists+open-iscsi@lfdr.de>; Tue, 29 Sep 2020 20:33:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601436782; cv=pass;
        d=google.com; s=arc-20160816;
        b=rB6+SaECiBwhzR0Gu9ta8Xkhn6XA6MsxtwI9fGTnYRlVMzB90/bG9c11ZVLMP0ar+9
         keHj0cwv5bQFg79Et9D8+gTf2v6KweFiFjnm4e0WLjoqza0WSUVEpakFqxLJ5iQ7uRSQ
         9FrsyDunG5oBBRjxF5tzLrrcXWS+JuifSuXzBaXBVqsuqcn0yafY18G4MeFRF77qIW94
         W7wVkDKIIIyIMSYRYnTLvizC3Nc6RdhIm59Rk7vlyBscANsF9ZlA6ha8GHhbwXDazMyB
         Mpjej+9QtNZC7xpBwbbwURWPTv1UFHAHV9+4erZ6eZgdJWJwi1SAkaiNWGd9fHU97UNh
         g+hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=3nPaYszqXNkZbnHDT+TEYMVyFiH+B01TqN6cWHCwd8E=;
        b=PLFTf7WVh2AAmGNR1qkWY/HLjc+C5KNFgP8dNWjgjDOpQ+8tHrIWhf0QKpogQKaoQq
         FlcXFsa/EN1IckK6fvZcCPyZRxp+PlVvKJTjUE8ek9XT/SiNow2XrcwcQ2eYZiwbGwMq
         2ctrKd25NNIFnS9inBmd/ge/sWniP2D7IWhjpw6q1/16/o53dzaoM8ymOAMuu9uLH2we
         33hH1Toeh+VQS47D9zIeEerEWV0LYfewTs1dFZgvajhBj1LDGvKvwm4y3SyjM1ORMMve
         4xvAjZSwxgP3yI51yyvy49CWF1ELKrPSIizMFjLBMq6rVynfJiJfGlkI+44Jk4umXdiI
         tAOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=rEIYf9kw;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3nPaYszqXNkZbnHDT+TEYMVyFiH+B01TqN6cWHCwd8E=;
        b=QwfCf9zRxgvChXnz20UzXyPPYUtXRTAUiPgPFKL4n5NzzaeXJDovupsKbIoGuXsjer
         Owejl2CCM7t6IjkmGZHI3HvKQq4ePr11/kJuVBiRA8vmU8YLo1GNxlfRW4EXeRCdm3Pv
         geMQ8E1GIpxBPv0d9V7wTE8FiiKG2CgJWQjijSMCh1ll98sHKRFWjFZSoEW9iXs5Py3k
         TVyk57UtoP4GT5Bt5RVJ507IDUlSnocnw/X1rXVS67wSu5YgeEZujoHyNmvDskqWySNU
         g1IGF3OzOvr8Y89Je7p3TT+Mr/zjhWVtvf4NtC01e7/dpiDGqCBA+By4gNg42ekL2Rbn
         xKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3nPaYszqXNkZbnHDT+TEYMVyFiH+B01TqN6cWHCwd8E=;
        b=QBF0RWwfRPRCi9FlSvZl6sVrB7QIa5gHjVb4E44vyHAiX7DZRwwJUaukw6YVkRG+nG
         S+oukzdFrolggIFCb/EdMuKhpX586pi4lq2sl4yWQyKbIKHHO/9P3Vbr/KQBQsrHM7y5
         K9vrlrD3v5PFN/+5u1MWhf2Gib9NEHamj9mPFVAtU2UHNyB9D30iP2oZWJYVeFeG0hFt
         WHodOi//wI8ap0MVK1xZgbo4ROB0Mg2njOsfIadydVcuDdIqKMBL3rZj0Uru5Snpmpof
         kmMnIGt3PhGEb4csLwtlcCLwKfedZhGMHC4WDGU3eHhHgLaEGQcnTz/8Ig6ZxUUJBoW0
         0bbA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530uHkAfeQMTFcvrVtF3zvLOUM3rn3QZFmuxVveJ4nHHnmgBQAs5
	47AIhwqFo3kvh1O4i0nzvXA=
X-Google-Smtp-Source: ABdhPJyQ2kFpclKq0oLeEU/dI7gNXJGRaexYZiq6akH1PFbkR1Asf+vEQYNnwGkfFgOpbliKPHvWNw==
X-Received: by 2002:a05:6a00:1483:b029:142:2501:3965 with SMTP id v3-20020a056a001483b029014225013965mr794397pfu.42.1601436782096;
        Tue, 29 Sep 2020 20:33:02 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:774a:: with SMTP id s71ls248470pfc.11.gmail; Tue, 29 Sep
 2020 20:33:01 -0700 (PDT)
X-Received: by 2002:a05:6a00:22d4:b029:150:bd5d:ce11 with SMTP id f20-20020a056a0022d4b0290150bd5dce11mr487964pfj.38.1601436781511;
        Tue, 29 Sep 2020 20:33:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601436781; cv=none;
        d=google.com; s=arc-20160816;
        b=RwYYOBcfI4nKyHZKeKYrJ5qgUWfNeA8t/oOgHW1Xv4NwJ+ETW9okxYpmANniVXXxt2
         gkkQpxrkxCt3vTv2rYGpOaxvBh/FiP8rlPg8771BoKTqZlyWSk/azDg98p7P9IYNqAKu
         B4NCRFekBey9X/FTzIRx0EJ3C5tkVn4D/4WtLViXQ6s0n9XPbsqQb1GsjAZYFMg697YB
         1ombNYLSdSv5lQl77m5mnkNa2w7ClsseFlT0htUEGwOSYQ8ylhQ0+fl4Jhij/3qmVUAt
         k0uANe2NYvwVsff8zd+qnB7onwcs0Teve2aAYW+/44nhzLaWxhjAGQ/RBIH34KovMieM
         qMKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ggEbhGxsmKu0jJukfKnzC8SsbODsi/dD5e3sMRvdYnk=;
        b=mtzdt3jjxtuPY/V1ChgKhSYXVl3BapxYj2T2dP9pSulJRUqVopwOcyqEYy00C249nE
         zHOYwBtv/kKLB5LLuLqGIEz84CaWQ4KR5H+vHYDafK/qZPT6gYYE3/uR6rgzb1v6bWz/
         9i7zHc5dVtPB2rQxLJ/5sNkmeRf1eZQRJ5ePqz6RUpuX4MOzcc1my5WUmhdOyxZDRfqD
         GPmM2wOjdArgJFhL1ZnGW2gNfVDJYJAPc6aPwWY+l1zcs3VU2+blCJpaI7UzE7fzXubh
         BHRpZqENxymQ2Dr0VI921gj43pU5cnpsWloPtrxxhogQZnNv8JGlrGt64sUjSjHQ/7LS
         xHvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=rEIYf9kw;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id t15si22213pjq.1.2020.09.29.20.33.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2020 20:33:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08U3NuIY146548;
	Wed, 30 Sep 2020 03:32:59 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2130.oracle.com with ESMTP id 33su5axbwn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 03:32:59 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08U3QVEu064860;
	Wed, 30 Sep 2020 03:32:59 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3020.oracle.com with ESMTP id 33tfhygk0k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 30 Sep 2020 03:32:59 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08U3WwEO026773;
	Wed, 30 Sep 2020 03:32:58 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 29 Sep 2020 20:32:57 -0700
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: Chris Leech <cleech@redhat.com>, Lee Duncan <lduncan@suse.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        Mark Mielke <mark.mielke@gmail.com>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        open-iscsi@googlegroups.com, Marc Dionne <marc.c.dionne@gmail.com>,
        stable@vger.kernel.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH] iscsi: iscsi_tcp: Avoid holding spinlock while calling getpeername
Date: Tue, 29 Sep 2020 23:32:56 -0400
Message-Id: <160143675721.27517.12028217524794232407.b4-ty@oracle.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200928043329.606781-1-mark.mielke@gmail.com>
References: <20200928043329.606781-1-mark.mielke@gmail.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9759 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=862 bulkscore=0
 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009300023
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9759 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=868 suspectscore=0
 lowpriorityscore=0 spamscore=0 clxscore=1011 mlxscore=0 impostorscore=0
 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009300023
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=rEIYf9kw;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Mon, 28 Sep 2020 00:33:29 -0400, Mark Mielke wrote:

> Kernel may fail to boot or devices may fail to come up when
> initializing iscsi_tcp devices starting with Linux 5.8.
> 
> Marc Dionne identified the cause in RHBZ#1877345.
> 
> Commit a79af8a64d39 ("[SCSI] iscsi_tcp: use iscsi_conn_get_addr_param
> libiscsi function") introduced getpeername() within the session spinlock.
> 
> [...]

Applied to 5.9/scsi-fixes, thanks!

[1/1] scsi: iscsi: iscsi_tcp: Avoid holding spinlock while calling getpeername()
      https://git.kernel.org/mkp/scsi/c/bcf3a2953d36

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/160143675721.27517.12028217524794232407.b4-ty%40oracle.com.
