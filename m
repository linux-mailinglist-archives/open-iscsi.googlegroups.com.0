Return-Path: <open-iscsi+bncBDVIJONZ3YDRBJPO47ZAKGQEDWTUG6I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9303517453E
	for <lists+open-iscsi@lfdr.de>; Sat, 29 Feb 2020 06:31:18 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id c17sf3449977pfo.15
        for <lists+open-iscsi@lfdr.de>; Fri, 28 Feb 2020 21:31:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582954277; cv=pass;
        d=google.com; s=arc-20160816;
        b=V2vBaMvqKyl2fk1xgE29+gdZQd2Gcuj4nljXixObQS8oGu0H0cX1cGeKAlVkU+OdTn
         46Nbn85NFBnzPoBSYL/3+vSKgFtqbsKitK47cyqQvTdo+DLAo63wD59RjwEymHio7To1
         sO8qQUpeEr2ZnzLFgMru6srDw6jFxVSPY4efaHTpmLlSX4ArJHofk0zydp4bt+BtMCd7
         6B3xm8bVRiqYilPH18Ru1+7y289TajnTWosjGqpTQ1bMMBhrK0KWn10cTFMNmQq2I1Ej
         SL3qXHXm6mFsaarmmjmxY7NHfIO454AdXplwssIr4KABw8iMLzMbbuLFCsHNq8/6j151
         BDOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :message-id:in-reply-to:date:references:organization:from:subject:cc
         :to:sender:dkim-signature;
        bh=wVOpLRTw/geSk1EeiOfrDHRG5sEwrr8e5MzX053AJFk=;
        b=l6eU3U07eqommZ9L5RY+H6LYBCcMMQicTEwotinHx/vGbGiQi4nfYnq1Zb0/7Ph+z4
         dMi+rvE44nm+sjFyVpyvwJzicz5eHnkEftc6Pk1fl4QZSUvCmRPaZSJpcR2wx4XJELXm
         giabOef1LEsaHbW+HLu7qQ97ez1Uuy3ps2Bu11Z1UrsiVGXmfp3ontxcE/4mglZSiJUR
         uh0wsSpMOAqzzS8vK+8sUr0NiygpIUsN/jfmHgAqlpArgmJkexJSSqQUveyXXHZeDtcL
         n492+jYrb/56YvKaibUESXXJKF2eH+B14Eh1kydRdUgng8ONua30Qsk6V/JoGk6tWsfI
         hRCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=VIvqEfRs;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wVOpLRTw/geSk1EeiOfrDHRG5sEwrr8e5MzX053AJFk=;
        b=TDVKUKbBKjtJiE031T+XP7Czgwxv6E0m/OXhVymigjRbcPN8clS7rmkXiYclWSZdcT
         In6yJXcyto9BZVW1uTzOSw+n/WP2zbUAARRwtj1yY/5CJzFVV+laVifQ+gWT0q97AaVJ
         aJn1imMEoda/CNa59Pvea0P4nVqv6h7irFjjhLpfZfgFz//ke0cUVZEg1lUbkn8/DVIA
         F61RZZVqRJX4/APvSgavifUcmeMAwJ7e+ZZXuYUbsjYynhp4tPqkcSkrTR/WBA07+80A
         pWkfXl1BiYYiQydzIdDCT/Eol8KSFsJlWhdZlwp6y7mukk5BcdSOOyG9uOaCTZkrKswQ
         qYug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wVOpLRTw/geSk1EeiOfrDHRG5sEwrr8e5MzX053AJFk=;
        b=lxw1PIYMxqtTd/th+9OuIi1aeptsv2n+ybpQiGJfoKeM7bb6yO1h6gZuLRFajNXDd0
         RUla/cd8C77Rmo8K9NG8wCXRc76QK/BjHr3DWkfKAXK5jNrvqjTozTmLogWi2xbbZEjC
         bvIG0t09fonlVO/bkf/byKlhp5U8HWlOOUVrWfo2Jtrq+5MsZ9cFqmPwEfw4iko2whNv
         M+wPBD0QBDi077GBmKSuWNbkLu5lfm3ilMVJ+mbMmcVdF7H+TCP/7yapan18HNQj2WLZ
         DRl2MYVrQaNt+zwYE2+C+9j/a6uCZDIHz4vgpuKJ4QaC0a/xoOp25TK8P3RJ0I8hPbn0
         PAvA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVxn9I+HQB9lpNlltDPuUMM+vh+bBnYSLmjLiiJ4NeNEFjID+dw
	ojSURKz8r/XfRKYHo8HXu/o=
X-Google-Smtp-Source: APXvYqwU2cS6FZLDZpoKfk+eOEDpPdemCvrA4kQ7xGnvgWbPfA4Ms57C6zBppFjPaAGjkuzE3SbJgA==
X-Received: by 2002:a17:902:904c:: with SMTP id w12mr7655597plz.35.1582954277278;
        Fri, 28 Feb 2020 21:31:17 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:150:: with SMTP id 77ls476830pgb.0.gmail; Fri, 28 Feb
 2020 21:31:16 -0800 (PST)
X-Received: by 2002:a63:f40d:: with SMTP id g13mr8514863pgi.374.1582954276821;
        Fri, 28 Feb 2020 21:31:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582954276; cv=none;
        d=google.com; s=arc-20160816;
        b=D40asptU/Kpe+Qhb6gq1jNTvJKK/+Uu/xxyEL/PFpdJl+S7EKkj4NZ/oEhcRNiBDVe
         UUqmjjFVPE6tU9TCdRCn2SIdV7M/L0PZut+qFIfttcowhizGpqGrrMHU+KgYAgW8Mz2D
         dGVkbgqJy6nrJVT3OicS+mdvZI99IfAFlxQDEgU1Vsh3Rdr3boy61cbhThcAI5+1KRng
         SKOt4/bnjvNAMX4T4czblke5Y59MCAbymQdQBUEqCD3eKvmrv7FYTIr4HMGnyZB66n5L
         Aec5jAfO4sgSxXWQHba46PFEovS+GpS+5zWgqywOgRuN+GtRfp1iyiMN4QO6w2jOzkfz
         wkmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=AtspBA7ejZrwML6xNPXF3e0QcDG5Lp35lGbKilAuNTE=;
        b=q4tiRhWIezWxEPTGkdU8J9sZV4bEb/4OusJfYEmmgEQZWJJitjEUt4LUk5ASDlO7Y5
         iihlIPV0yzt3r/VmQ5/R7x81eX3gTu4DMBEwFkS2LZmHGKsp5YJQb6mfMZWpxheKq6eh
         NiEEEvpdQh64g3+0+3rgBZKfEDrsWsOiNix0rigX0PXG06sr5IkL67N2dJ7ATBGhUcXn
         ev6WbXLnmI3zvLQ9++tuuEiOsQkB3VL6MCSwusnDiv7qeszOtBc2o8KBvnHXptKWMUwB
         w732VfwmmChT++sXCPAMo1oyhxW9JKFTyA3rusOnVx+8E735RnL7D+zCg26h5Fy/fs+1
         tVWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=VIvqEfRs;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id y13si192725plp.0.2020.02.28.21.31.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Feb 2020 21:31:16 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01T5MoK3111936;
	Sat, 29 Feb 2020 05:31:11 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 2yfgkr83kh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 29 Feb 2020 05:31:10 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01T5SCOC164011;
	Sat, 29 Feb 2020 05:31:10 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 2yff9nh5ac-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 29 Feb 2020 05:31:10 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01T5V7xY031146;
	Sat, 29 Feb 2020 05:31:07 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 28 Feb 2020 21:31:07 -0800
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: lduncan@suse.com, cleech@redhat.com, jejb@linux.ibm.com,
        martin.petersen@oracle.com, open-iscsi@googlegroups.com,
        linux-scsi@vger.kernel.org, Frank Mayhar <fmayhar@google.com>,
        kernel@collabora.com, Khazhismel Kumykov <khazhy@google.com>
Subject: Re: [PATCH RESEND v2] iscsi: Add support for asynchronous iSCSI session destruction
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200227195945.761719-1-krisman@collabora.com>
Date: Sat, 29 Feb 2020 00:31:04 -0500
In-Reply-To: <20200227195945.761719-1-krisman@collabora.com> (Gabriel Krisman
	Bertazi's message of "Thu, 27 Feb 2020 14:59:45 -0500")
Message-ID: <yq1o8ti3qp3.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9545 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 spamscore=0 suspectscore=0
 malwarescore=0 phishscore=0 mlxscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002290038
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9545 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0 malwarescore=0
 spamscore=0 mlxscore=0 mlxlogscore=999 clxscore=1011 bulkscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002290037
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=VIvqEfRs;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


Gabriel,

> iSCSI session destruction can be arbitrarily slow, since it might
> require network operations and serialization inside the scsi layer.
> This patch adds a new user event to trigger the destruction work
> asynchronously, releasing the rx_queue_mutex as soon as the operation
> is queued and before it is performed.  This change allow other
> operations to run in other sessions in the meantime, removing one of
> the major iSCSI bottlenecks for us.

Applied to 5.7/scsi-queue. Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/yq1o8ti3qp3.fsf%40oracle.com.
