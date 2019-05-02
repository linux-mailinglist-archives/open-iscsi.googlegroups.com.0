Return-Path: <open-iscsi+bncBD3JNNMDTMEBBE4NVTTAKGQERAGN2BY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0DB11C14
	for <lists+open-iscsi@lfdr.de>; Thu,  2 May 2019 17:02:44 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id g67sf570845vsd.18
        for <lists+open-iscsi@lfdr.de>; Thu, 02 May 2019 08:02:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556809363; cv=pass;
        d=google.com; s=arc-20160816;
        b=xrjBpNZWRJnshrr9AK90HQxqxQGflnO4zVfa2ZaqFr2Gph9m3e2wPiJzEozmvJ7kPL
         N0MElnhUq0SMcQLm8jiX8vlRCXIJyOV7/FKn01RCBKXvOnhf3Pa/QKIN9FZ8yYta12fm
         TeeupJb5UTvKPY9T+SOxwCLfpc7NLtrSWLk1VZL0M6hvN82oHbCA8LqfhotNhbZu7XRK
         TLX42ypjIDckfDPNUSeC4Zj3J26XFXAHmdQzROmfcPN/ChZhZXrxjsbjxU+yqm5yc+Yc
         Xs3KgHSdMUoUFK/0kpODGwlDMvqleane+N5Ac7rvH3uHUst6I3eYQ5uH6PRufCQWVg7c
         3SCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=/uM+otVvZ4qxt8xC1MUj0nQJVgM2ZTlH77EteC9aZc4=;
        b=OQD2vpTGwDEaUKEIlJXXFfVZE7IFFhBNvas5b4vnvX92UkSBn0+fMEbD/tp5dCXASK
         KgDuGord/hLubcn1zd2yVQo0BZPZ7rU1qiGtB5Wi+6kT/Dldw6J3rZosQTelF5TMbkq7
         bqPZIoRQSPy1sTFfqU5NsvKFI5pakqRiFsEOe/M7gAd3xk6Yu95v3QkrtfcxhkeBknbM
         WpUIsGVTOiyKOQWLxq6lVZmLFFhL7itE0P2ROSg8X2R7cAtAQ5exPn9RSX85kKuRTETb
         2RnAz63owwhAmzUERkZJSIXqHKp+W56C1RJIyNSZ8KHq7zhep8VJMSO3UIoPs7PmSH7C
         3/dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/uM+otVvZ4qxt8xC1MUj0nQJVgM2ZTlH77EteC9aZc4=;
        b=D4CfbO6AJymPmBkM+2BqBGzD1M+lKosjiO6QyPlQ6ZQHNxLXbtvaqfAsy+ouiZ3WCS
         tIikBfofIzcWu9RocDZepxkmmmQehbdeVSCg2BILb5Dy1U1rkFSdhDJr8e97fR+oiFG6
         pQREWJUtTme+zleF3lD/VuI+ffJ3KLO4SwyoG02yPK5M52EPbabG0QRW+yvQDpyh6zGN
         GlAm/IRlmM/GmMjTBe9D+MLzdUlNcWHr1jfW9tPtFxN9dkhPIhnhW2uBBg8tdRF8dYRO
         u/Sm7PYWb5qxhr9e5xI29m3A5j/LE/MHtWsFZRoGwH80GnI9p+b2SdqozcVBhe4F9dP9
         3L7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/uM+otVvZ4qxt8xC1MUj0nQJVgM2ZTlH77EteC9aZc4=;
        b=BIyXg26hfogJZkxYIZVbXkBxnLrSgS29eHRnVfxyiraGqCcqmQmFq8fR6IRW+XZlVO
         LtlwHNHb/AfCKd5Jyq3TsT3cfKx6uUnwB4gsqEcy+aLG/mFiTUVjGOFxhrYGBGajhWYP
         llSjuCNX2b5E3Iz/6+CJqWrU2Z+Z3xZ+fdhw31GFebKWfhqiLBkAGXB9ufXevXlWF/5u
         1KQf2PRd5DCIjDKS2qoQJRli5zTeF+k7+2CAL7fR1zOxoPsVRrMlqUQUf5BlxAYxobmp
         1oiDw69KplwlskUi5SEl3EGAX0fhaqAc71VplLFg9Z3vxDohUrDjvZhndnqFPxTCPKcC
         MmWA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWpGgPOi/9BFtHpi9yMBzDvwTCeRWlFt+aLLhe3twNT9mOjlBM/
	Y/1SbEU6V0lbZ7yPWdx5OgM=
X-Google-Smtp-Source: APXvYqyOiwN6mXboVfpo34Tg0wkbQlyHvAanRvEqiQ+/h2GErWG1n26650A5z1M/sApY/s3zxzBztA==
X-Received: by 2002:a1f:8f0d:: with SMTP id r13mr2032298vkd.63.1556809363469;
        Thu, 02 May 2019 08:02:43 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1f:9d43:: with SMTP id g64ls88933vke.6.gmail; Thu, 02 May
 2019 08:02:43 -0700 (PDT)
X-Received: by 2002:a1f:f03:: with SMTP id 3mr2121246vkp.2.1556809362620;
        Thu, 02 May 2019 08:02:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556809362; cv=none;
        d=google.com; s=arc-20160816;
        b=waBBCrybQPDIrg11NpStJkM5yZiAtjYgktntJhbuhGZ3Jh4dR3LsBp5f3+oegmRt8H
         wPLljsVSge/AmZnIaXDrKMiZPiEj6ItSQPodQUFX1jCK4uHsD5EDE6eMW19ySNZT7qdS
         8yvKtaUIT6WpccCz/Wj5v5AdbCgLoe9HPOSB25yMFZp+OpWTm2xwYbJ9WSHJ/pspBCuC
         tSzL6Wbb5pG6CH8CqUKyahShTvvH88WBYK1uO5oIpEeAO46SDUHD3nPHIM5mQ1eIXJ51
         rNFrWQEQT0MXvc3KHYYSueh6mZy0YNUWFJvEuZehl5+JplHPuWjADjpwKHOJUycHbfdT
         wdJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=anO7lfUc9r8EAyhsYOxpxvhPk9AVy84BcEYav0cFPYU=;
        b=iD9RCYUcHf3k5tqrcwsVgMxGiQCChaUS79MeJDqTDltRPiw3FBaUpXPxQmvR8fjSz3
         nBA7xLMwfRZDTyKNTUP5AGF3+gMYooz4nFsC/r9HWd+82w8s5Vs9K7jwXIssO37X57+e
         L4wIc1NJuVgMx0Ra/i9WaZng8HaEY3WNCSm+yPiwXgzKEh1T3drkqJa80fvrlIpAtr7r
         7yH9caZI9zCQ7z22NWanQeWYWVh4BsgBCL6mhWFC0flTObBVfjiHxh5LIZMR9NkULTx5
         ronvSJQTlId5+jR6bi9JrBehSeaXo6BFK9xx6cuzQUXMXlqtmTkGqKEc/arVt+vijL9C
         73wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com. [209.85.214.196])
        by gmr-mx.google.com with ESMTPS id r138si992234vke.1.2019.05.02.08.02.42
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 08:02:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as permitted sender) client-ip=209.85.214.196;
Received: by mail-pl1-f196.google.com with SMTP id bi2so1141586plb.13
        for <open-iscsi@googlegroups.com>; Thu, 02 May 2019 08:02:42 -0700 (PDT)
X-Received: by 2002:a17:902:7892:: with SMTP id q18mr4274244pll.163.1556809361485;
        Thu, 02 May 2019 08:02:41 -0700 (PDT)
Received: from ?IPv6:2620:15c:2cd:203:5cdc:422c:7b28:ebb5? ([2620:15c:2cd:203:5cdc:422c:7b28:ebb5])
        by smtp.gmail.com with ESMTPSA id r197sm54790824pfc.178.2019.05.02.08.02.39
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 02 May 2019 08:02:40 -0700 (PDT)
Message-ID: <1556809358.12970.4.camel@acm.org>
Subject: Re: [PATCH 10/24] scsi_transport_srp: switch to SPDX tags
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>, "James E . J . Bottomley"
	 <jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.de>, Lee Duncan <lduncan@suse.com>, Chris
 Leech <cleech@redhat.com>, Willem Riede <osst@riede.org>, Doug Gilbert
 <dgilbert@interlog.com>, Jens Axboe <axboe@kernel.dk>, Kai
 =?ISO-8859-1?Q?M=E4kisara?= <Kai.Makisara@kolumbus.fi>,
 linux-scsi@vger.kernel.org,  open-iscsi@googlegroups.com,
 osst-users@lists.sourceforge.net,  linux-kernel@vger.kernel.org
Date: Thu, 02 May 2019 08:02:38 -0700
In-Reply-To: <20190501161417.32592-11-hch@lst.de>
References: <20190501161417.32592-1-hch@lst.de>
	 <20190501161417.32592-11-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.2-1
Mime-Version: 1.0
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.214.196 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On Wed, 2019-05-01 at 12:14 -0400, Christoph Hellwig wrote:
> Use the the GPLv2 SPDX tag instead of verbose boilerplate text.

Acked-by: Bart Van Assche <bvanassche@acm.org>

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To post to this group, send email to open-iscsi@googlegroups.com.
Visit this group at https://groups.google.com/group/open-iscsi.
For more options, visit https://groups.google.com/d/optout.
