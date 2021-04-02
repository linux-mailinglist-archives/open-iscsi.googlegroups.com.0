Return-Path: <open-iscsi+bncBCUJ7YGL3QFBBDEXTOBQMGQEILMEFSA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FFD352707
	for <lists+open-iscsi@lfdr.de>; Fri,  2 Apr 2021 09:45:17 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id y16sf3982635oou.0
        for <lists+open-iscsi@lfdr.de>; Fri, 02 Apr 2021 00:45:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617349517; cv=pass;
        d=google.com; s=arc-20160816;
        b=TC+zxTor11AwZRIiXYMxgjke8baf7JA86xM1LZtHAosrttrBSjfO2ZDSqcf5uT3OFm
         GuwK5Tqw+djWPpyVVw7gpT9n+Dagrpd5sTWzb3JC1I4QHJHbvSfI5mwFU9td0XPJ9/cX
         rvdw49s4CmDSTol6DIBCB/Yh9lDHGifizsfeMv+nb0XQk6pc7kiKUAeJIDZ6HWtIl4nx
         eKzMbNhK5v9/nUN+LBVi8FmWHW7+IVTDkjppSr5KJYuKpNxSgGVlXglHGTrBOjDf9bil
         u8D63YTb4eko2tT54NcdMMHlc774Ook2d2xfZoVViSVUmqS/haKCgf8w6PgyVaMDwHm9
         hr5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=T2JAxf4mhpXFONa7iCqfSw/PMtLzXZXDkA1B3G+gWgI=;
        b=pEbyZXnsFC6PFbyZlwR90od9iqqHX2D/66XD1P6kKXctBv4x3XbBjF7yca+CrpEmw/
         jBbd5K1zUZ+W8HCj7rlsIUx0r/auhpI0NAB5A87QemBwzn3zh5ejX2I2nT3igA0WQa7v
         Ul1R56FNobyllYYJpbSfyekxhbBUotsye3NpdKfRXqyhjTqpBB0xM8fa3tuiWo8xOr9O
         WnEh0GEs8fZuLuSrfalyEEUpoyVybvhjXGWs5Ju1ih3pJatXT4mTeppC76p7+idgFJIs
         iurg5x26k2W/eJfkSvsFODxZ+jpvk3p0fTYbj5Qnm8tzt31x+g7bJS0EE6TxKFUJHcfT
         UE5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=kuXPhZGb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=T2JAxf4mhpXFONa7iCqfSw/PMtLzXZXDkA1B3G+gWgI=;
        b=m6Xid61DfBR75akqRU53fjjX3Vro1fnY8hCcPduWw43F3BMHExykOws/YVUX6fBym5
         Hfegop9yY7UyuAZgsGoiSzwmbBEe6fKtcGPlEvdr3+ovoT9PnQPePNpk6ylQsjjk70Qf
         cd5aYWuj/KiFMQHQJp7OgByOkhmmUM80MNJrU3n71EeHKTHsIPcE8LRTxf6e39RvKOip
         1dfxs1x77GmwUqFpU2+j26r+L43eT7x0jRe5n2bnprQ/vlEj4MYcHz+bGFT+yakNgP6p
         kc8Q/ADzKtIIIhkpCYYrUs1kXBjEdolqFsGwvEr+QG4wEiiCnAPuWogxtItZVnUJGJ1U
         u60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T2JAxf4mhpXFONa7iCqfSw/PMtLzXZXDkA1B3G+gWgI=;
        b=NbwpvzCXfy/tmZ/IKkfFvykHXUbQacCGTyRGnX9tZQj+nx+UgXkiJ355YGTGP4/DNA
         lRZ6xU1xJ5VVnfiu1BZ9p40Y38CwNMD66u0L3Cu+UxFm2IcVDQlWNov5U6vbcFTpoTro
         /SeINMLL+mi97jveGEqV/k+hXjdPk6QHLbCvq7sbNwjqEgK0PdV93khkTzSVWxPKiA5O
         go9BI5137bNYzE/iWZEjCEeGCx22QMRpGalDqFLIEem5Rsj4L/sQ4YVoXTl5N/jCt3hj
         ffjgWz+AEQ6e0eiSroe3vvQmY8IjyYgmfKdggXSj3klkcAlm8lNNiRgsIW9nbvlLj/X9
         ZfUA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM532uY59FkaAtqaU2QifhaMxj/5S4GMfIlqpQVCIypDoL2FEM9lyh
	7FbYKT5chlHOg2nHPmWSRbM=
X-Google-Smtp-Source: ABdhPJw5uUCHuRDEt5tcQkNb+6OhPeClAmCe5GJayA0wpAJZwrydP5Efw5nBbBE3ReF6lUrZTh2OwA==
X-Received: by 2002:aca:bb06:: with SMTP id l6mr8934612oif.121.1617349516896;
        Fri, 02 Apr 2021 00:45:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:4913:: with SMTP id z19ls508127ooa.4.gmail; Fri, 02 Apr
 2021 00:45:16 -0700 (PDT)
X-Received: by 2002:a4a:b102:: with SMTP id a2mr10583300ooo.30.1617349516414;
        Fri, 02 Apr 2021 00:45:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617349516; cv=none;
        d=google.com; s=arc-20160816;
        b=vAb06EAjv2uvV5bVxcGILPkIRjc6n3d+wIxRxQ85jqMWpid19RRknSN58tCohsIG4W
         5S3J1JAgMvrMR6FayfuQqP7PfiJEZCFlhb5wF8+3+UwkCAlp0ztyVxWefeNj1MidqqxL
         eXEPx/mcg2OASn8s0icfoaNvMTREgf9b/zvVjIqwpIJon/FHKAtHujyx8BKcR7Xw8mtK
         UIMPgLF+CWQ2sHd94XMUR43A4p0saMp6IGnjOACitxWCymd0GE8MkEK7A0BR9ZcmmR8r
         Edp4iY2Ac63dobT1QrShmOb2T3oJv3A2fUcdXrmzUNap+bEaTv2mODE9orh/K35ZGcXS
         eogg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0n8GwcflH6RuJzx9DlwCp3cKiTumO+3aJifGVAgHNWc=;
        b=HWD/4YCjgdQRpJGOX4Wdoxky/jwBCyNS107NWUT3ugo4F9dE9fpQ+PMEj5CbWf+CHw
         uu5Pto90Zgvk9X5+MKWlSGt7r8lk9siMdtKrkoKlyoXYCyqfmj1OKOhnBV5cR3Lk1eNd
         E7qRHZ4FbEuE5qMuiqwhtM+iN2DfB1WoSiwg8iVVe9SipHjGA9mRKdweSEQhkk3HfpzV
         tYir08RKZpIccFBqF1ImNq3hvexhiycY3k9ot+Jl5Yc9+ibXM1PQrnOnvZBUqEAP/e8g
         ZNwio/JANX90vRY6SGijgg1xj7RLdS1WH0Qx9nd8HnFqBNzjcqj6ZaCZHYCC0J5xUGVb
         Bebg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=kuXPhZGb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f2si1222442oob.2.2021.04.02.00.45.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Apr 2021 00:45:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CB30B6100C;
	Fri,  2 Apr 2021 07:45:14 +0000 (UTC)
Date: Fri, 2 Apr 2021 09:45:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: yangerkun <yangerkun@huawei.com>
Cc: stable@vger.kernel.org, vbabka@suse.cz, linux-mm@kvack.org,
	open-iscsi@googlegroups.com, cleech@redhat.com,
	"zhangyi (F)" <yi.zhang@huawei.com>,
	Kefeng Wang <wangkefeng.wang@huawei.com>, liuyongqiang13@huawei.com,
	"Zhengyejian (Zetta)" <zhengyejian1@huawei.com>,
	Yang Yingliang <yangyingliang@huawei.com>, chenzhou10@huawei.com
Subject: Re: [QUESTION] WARNNING after 3d8e2128f26a ("sysfs: Add sysfs_emit
 and sysfs_emit_at to format sysfs output")
Message-ID: <YGbLiIL8ewIX1Hrt@kroah.com>
References: <5837f5d9-2235-3ac2-f3f2-712e6cf4da5c@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5837f5d9-2235-3ac2-f3f2-712e6cf4da5c@huawei.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=kuXPhZGb;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Apr 02, 2021 at 03:16:21PM +0800, yangerkun wrote:
> sysfs_emit(3d8e2128f26a ("sysfs: Add sysfs_emit and sysfs_emit_at to
> format sysfs output")) has a hidden constraint that the buf should be
> alignment with PAGE_SIZE. It's OK since 59bb47985c1d ("mm, sl[aou]b:
> guarantee natural alignment for kmalloc(power-of-two)") help us to solve
> scenes like CONFIG_SLUB_DEBUG or CONFIG_SLOB which will break this.
> 
> 
> But since lots of stable branch(we reproduce it with 4.19 stable) merge
> 3d8e2128f26a ("sysfs: Add sysfs_emit and sysfs_emit_at to format sysfs
> output") without 59bb47985c1d ("mm, sl[aou]b: guarantee natural
> alignment for kmalloc(power-of-two)"), we will get the follow warning
> with command 'cat /sys/class/iscsi_transport/tcp/handle' once we enable
> CONFIG_SLUB_DEBUG and start kernel with slub_debug=UFPZ!
> 
> 
> Obviously, we can backport 59bb47985c1d ("mm, sl[aou]b: guarantee
> natural alignment for kmalloc(power-of-two)") to fix it. But this will
> waste some memory to ensure natural alignment which seems unbearable for
> embedded device. So for stable branch like 4.19, can we just remove the
> warning in sysfs_emit since the only user for it is iscsi, and seq_read
> + sysfs_kf_seq_show can ensure that the buf in sysfs_emit must be aware
> of PAGE_SIZE. Or does there some other advise for this problem?

More users of this function will be backported over time as we all know,
so just removing the functions is not good.

Why is the buffer alignment considered a "waste" here?  If that change
is in Linus's tree and newer kernels (it showed up in 5.4 which was
released quite a while ago), where are the people complaining about it
there?

I think backporting 59bb47985c1d ("mm, sl[aou]b: guarantee natural
alignment for kmalloc(power-of-two)") seems like the correct thing to do
here to bring things into alignment (pun intended) with newer kernels.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/YGbLiIL8ewIX1Hrt%40kroah.com.
