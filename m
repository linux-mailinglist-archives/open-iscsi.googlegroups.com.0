Return-Path: <open-iscsi+bncBC6MFJWO34DBBBM6235QKGQEU2MP4CY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 016CB27FB1B
	for <lists+open-iscsi@lfdr.de>; Thu,  1 Oct 2020 10:10:45 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id d13sf1847335edz.18
        for <lists+open-iscsi@lfdr.de>; Thu, 01 Oct 2020 01:10:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601539845; cv=pass;
        d=google.com; s=arc-20160816;
        b=MBtIszy+a+uPBrqappJU40Bphx7/X3Qwc2XLcVNgTu+GyBWks4E9XogGSa18rHNzvH
         Jgh6ZRdxttA93c9VWx39FHBnp2mHJOIN4hEGuVdp6GSk2SQL/anuO0e7T6UfdfeTBIu2
         LY/AKwvIRNJHARV7cc4pwgk+vv+NgPlX+5vYRe0fFzrl4K7duO3mapW9HNpl7AiQ/iVR
         cXjLTSleqcfKetZn4zLn2/kyhOPBHL8BlbNiLze/ROiktGESum2aI4qyN+4hGHSPetWr
         c4N8lsXk4eQiTmica7yzj2Gg27hO7JguTqrCEZKbsveNOoX2dzrcMqHb0DpLEssPO8TQ
         QPNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=fBnk4AXNbKmBeydmAi+0rZuemuDcp923/clsAvxPxrc=;
        b=ax4i44ienJdImSDJTLde+YndycF0Lc8MGCjy22seyvDbkNPNSQTg/Q3JPrKlv6T1UR
         XFdW5ee4iJxPdTRrPXoh5c+gJ2vutLPOOo1BbGsO4IPKcWomHk7PS2cExwd7v1j+xvj8
         uuPpwi5WIjnAsZKg2zcq7q4q2BvkyZabYYPrG8V7gt5NsikriKr9C5Vvd9VViTtz/CrX
         pknZE2u4/vHQGQs5KmBUEy2JjzFMC9MxhCKOO5Bd8FCDkZe1/gKYe46jo/0NyYZphcjH
         ivlnOAoJ+himFEm1e6qRdcIH9EubvU0O3DJxFIuT5x5FSq1p9UN+uKAaJj8vvDnAfWpL
         M5iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fBnk4AXNbKmBeydmAi+0rZuemuDcp923/clsAvxPxrc=;
        b=BDr1oBBVmCn8IXu9cdMnxbgFH0UInuyGHLQ8vpLooLIWGVu0fLm9cRclyKYe38x6/z
         G+reOoDsL9eRe+35NURagKo4/I/ZlupESYxhmuuBJZETu5TfKLseffygZOyeY03P6Xin
         pi1ha9hAGqr04g2tWugf/sD3C7GolEJg7skqXIipXxlwhpL4rJxLpxft8EHqip1aBP/+
         LCWrAH2RRwVaNG83Jp4HnQITALKO0qcP7y6TyF+Y7joRY7YvvdrJVF5WGzK0XcLgtmkw
         vatxoyFqMS9VdHSgi1Da2VJjEyshlMsUUYe3IjyPxhTJORMKYEDbsCmRpsWjOZkBbwjH
         9t4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fBnk4AXNbKmBeydmAi+0rZuemuDcp923/clsAvxPxrc=;
        b=q9ElYpuvTVhKNwEhxr8kXFdsLg89InFcWvRmjfCpCSS6GBKQTnTs/kvhVFVf9rR35l
         CpXRRn5LkLG6D2w71n1WqVMq4a24FEUWmpDaQIUqjkVQ/g6buBKBhi5TC+ESaQYFFoxA
         HgE59HlFk/xBbmfOoUIu07UPGK0IeteR/rJoRguvFR4v9NvOsBh2FP0msuenLLKlKuVY
         tZ/s8Ux4QP6sFB+lDvZTr1cWDKOVU3jisTJToipuhV+MuGvpMtVjFLf1rEGg6nyBdofh
         5b8GDsz2mJdeK5bBJ/MiANf8+Bfm8DXd6ZOjKVFbx96u5f/mOdYNRC3Q31cCyqjaTA1I
         MrxA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530CmWemoCt1LksmZvKzZVK2IZQyU5iMrhZ7R4bdNM6PaauzeieX
	js6AxgnCcR8UaXUnNwc1MlM=
X-Google-Smtp-Source: ABdhPJy5TGIk/I6WqD3DToev+OGJKfDqdXnIyeyRHhDwRtk7cAHc4zprhNnHCaYi4uqS+vZQ2ayxHQ==
X-Received: by 2002:a17:906:d92b:: with SMTP id rn11mr1240981ejb.70.1601539845756;
        Thu, 01 Oct 2020 01:10:45 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:53cf:: with SMTP id p15ls143679ejo.7.gmail; Thu, 01
 Oct 2020 01:10:44 -0700 (PDT)
X-Received: by 2002:a17:906:2cd2:: with SMTP id r18mr7124153ejr.371.1601539844706;
        Thu, 01 Oct 2020 01:10:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601539844; cv=none;
        d=google.com; s=arc-20160816;
        b=hos5NS4nRp7kaMRmyvKd3h7zgp/u64WNuiTPfgv4QxrjQWPr7ZN3KUm11wm8kPJUss
         WthaWXipxU1cdi9bVy94I+RVmfgQ/9H1iVdg5lJb+qsbJqf5V2yOGlJbkp6/03CJiRzu
         qRl9gJA7cGavCwG7RtdCjw4NoQMize8EOebRr9cz6qRaToxUbsqYyVh0GH0DkbFoWXVP
         igSsFXgqAzg1aZIe08BBkCA+OGkXzHokh99jAL3urP0fMWxr5p5IdWNot5jltuEGskOr
         zN4freUvU2xOJDdilSSazRndk+Od9HsExDtZm1Yzunvbvevc+5rb0h8c/snxewLNsEpY
         YCIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=hCxZ06s7qPpRVMOpM7RdNBdXC8KxuvMO3l98wUzRYuI=;
        b=Rq5q77xIttQ3s3hSQTaU0NUK9H1ICiAJd+Lax2JNldtzQpTNubGVouBlPZDFKzERf7
         4xcmQk6mDxd5loArwEgoV9D1XYHyl8nu8xlOpUkuxba+187i15mtp3eRcX1QHAxs0Abj
         UUo6DPJrq1XPM2A0EsGiZOoJKimH0saboJeV817fKidSwvFlQluaS4W/YhYGrhOtcJGM
         oa2AeiuM6TEMt/V9Vk7hcx6MLW3fHkb/PSUW6E9tTeCiwMizbIATqngVPxxuJNGGCiHr
         0NMLifWR8cOjr7eh0AVwznrGxYi3v3NOd6Eb/vuCVk+IvIix0Ww/ljPaUxRetwGzaG7t
         /e3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [194.94.157.149])
        by gmr-mx.google.com with ESMTPS id a16si198207ejk.1.2020.10.01.01.10.44
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2020 01:10:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) client-ip=194.94.157.149;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id E9F026000050
	for <open-iscsi@googlegroups.com>; Thu,  1 Oct 2020 10:10:43 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id CE728600004E
	for <open-iscsi@googlegroups.com>; Thu,  1 Oct 2020 10:10:43 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 01 Oct 2020 10:10:43 +0200
Message-Id: <5F758F01020000A10003BACF@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Thu, 01 Oct 2020 10:10:41 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] [PATCH v9 2/7] net: add WARN_ONCE in
 kernel_sendpage() for improper zero-copy send
References: <20201001075408.25508-1-colyli@suse.de>
 <20201001075408.25508-3-colyli@suse.de>
In-Reply-To: <20201001075408.25508-3-colyli@suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Coly Li <colyli@suse.de> schrieb am 01.10.2020 um 09:54 in Nachricht
<20201001075408.25508-3-colyli@suse.de>:
> If a page sent into kernel_sendpage() is a slab page or it doesn't have
> ref_count, this page is improper to send by the zero copy sendpage()
> method. Otherwise such page might be unexpected released in network code

s/unexpected/unexpectedly/

> path and causes impredictable panic due to kernel memory management data
> structure corruption.
> 
> This path adds a WARN_ON() on the sending page before sends it into the
> concrete zero-copy sendpage() method, if the page is improper for the
> zero-copy sendpage() method, a warning message can be observed before
> the consequential unpredictable kernel panic.
> 
> This patch does not change existing kernel_sendpage() behavior for the
> improper page zero-copy send, it just provides hint warning message for
> following potential panic due the kernel memory heap corruption.
> 
> Signed-off-by: Coly Li <colyli@suse.de>
> Cc: Cong Wang <amwang@redhat.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Sridhar Samudrala <sri@us.ibm.com>
...


-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5F758F01020000A10003BACF%40gwsmtp.uni-regensburg.de.
