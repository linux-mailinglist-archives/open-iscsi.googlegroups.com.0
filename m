Return-Path: <open-iscsi+bncBDQ2FCEAWYLRBVG7UHVAKGQEIRAMMVA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFA982498
	for <lists+open-iscsi@lfdr.de>; Mon,  5 Aug 2019 20:05:09 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id d11sf73294978qkb.20
        for <lists+open-iscsi@lfdr.de>; Mon, 05 Aug 2019 11:05:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565028308; cv=pass;
        d=google.com; s=arc-20160816;
        b=FTjRyAwxYnhVyumWT+3nZtbtVSLiBDqby3ntOHjRBWwvY87ERG1EAdJIb/1mrBjezj
         HlBtyTk188X10nCaGmfPqLJlfPUfIlKLv9weLyiiWn4eZ6SbSM3WNiNjYCc6/I6EGrLc
         1biZcddFLC7UCIUoLYHNTZqPPF/GxwRqVFsgrUFDLzpPUp0aC7RfozS5wNs3nv5xcaIZ
         7HBsr63hSajtWRFbtKz/XY32k6umUgChGSOVr9iRoFe3GpTCC3WgTuKtTIVMF+VL9cey
         2wj/AFRKD9Q6F50fSQlQ39qNB3mQ3u/Fftc316uc0JpopJRpky2VzFBr9JHqF9Hq/xSY
         uUxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=xg3s4jnog2MRZ6aOsQ25Usq44orR0iblvjj5GUkoFsA=;
        b=hg1oWmXK+Lkarl6s3EHOdbM9QTnNp2UiStGh7XtV5m3bvGiog/1RRKzSu89mLbHgfH
         DRIvU/Rn56mhexr68NlK0/MhMoyKvScqmPiqzHMI3nzQuratNId1k7cKe6NjDDlHhrhs
         sBuqDz91aqAJzB+T8OTUNJQrTgykILf+WFOE3p7i/qXsbbm3Yz7Cr+edeSgrucq16Zc0
         q/llN5095zMQk/JiewDZbFaFGJ7dnAmXbXoajK4XxafOoGn+qGregStbTVnYZ55qE93y
         hoGaxtOHzDDkQA8aAJg9lsrikXeftx1l+AsZqegzv2CSlkgKWmPuak3orT9DenCzb/iM
         LpcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rltn/ixZ";
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xg3s4jnog2MRZ6aOsQ25Usq44orR0iblvjj5GUkoFsA=;
        b=N2wi2WtYFziAsHEkwAFiN9/DiOhg6H5hhCATE1+Q62dyy1HXuxiW573Megod3+iLvl
         Ko4TXA9qozwLrVKdI7Fjh34WcbvXYyXHg/ghNhmkCuJolSrSPqsmiUQt//cFymY66UwE
         5ofLgOEDvcly6Gv68H7xpLXAYGkVQm8IingRdAPp4Z5mtyc5BhGMGp4vR1+YFdNmE5nT
         WcdY75Ilx69ULigZ8VRZ9UAWq3Z+7pHplVsJSj6+9uP8M7y7Wlwgz4r7ZoYW2hEIdgty
         oeZ8qllX+Nyjhj+nLbT/2dpSpncZdAIAnxo2BB2BvdP8jj5BsQFor/7ipR0MDj+e8JDv
         leQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xg3s4jnog2MRZ6aOsQ25Usq44orR0iblvjj5GUkoFsA=;
        b=Ny6ubAUCVtg7ur0KIJmCcz9jdONcWC6CVjkUqtqsKD3eZYh0kdpDeHfYzOSxeScrf9
         VO976Taw5TmpoxQFk8NzI4vPW/JtyQ9/KzTtowQ2gjXH4BZAbIBqM3HG1CcZ+JoGbWcu
         loRicKX1bJD1EDceAYfKW06PIlCvZLM/+3qq3fEeRaK3nZNFXq+cXy3UkcpMf2uq6rjM
         YWblkBnhcKR0kn2FBX//nd2dbTKuQ8cekPhcYBUOstlg5iyRaWxBeao4GYnF410CH41L
         b2LRxKYg5BYY2X2buOYuoceWlqM9xthYJO/p3Z01WYKQO+2i4wnuI1TlSZz6lWe9YHZr
         vUWQ==
X-Gm-Message-State: APjAAAWXQDxk015iNxr1JHoY278rFFsW63vdwaclEjA7PUbK3WtGtpLC
	PtD3KKfDwqSa5WJimu8V7Ys=
X-Google-Smtp-Source: APXvYqyoumLnQgdB26+QSrwbiEs15QksBW+yLQG77mv8BAcriNZAuv7kWJTmptVTaR3CHGlu/gwVxw==
X-Received: by 2002:a0c:ba0b:: with SMTP id w11mr110583611qvf.71.1565028308225;
        Mon, 05 Aug 2019 11:05:08 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6214:1112:: with SMTP id e18ls2334629qvs.15.gmail; Mon,
 05 Aug 2019 11:05:07 -0700 (PDT)
X-Received: by 2002:a0c:8791:: with SMTP id 17mr111850681qvj.215.1565028307932;
        Mon, 05 Aug 2019 11:05:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565028307; cv=none;
        d=google.com; s=arc-20160816;
        b=Dud+qXBI8oDaB1f+7n5NPCzyfXw2MdlG/7q1Tp2gr4btVR16MavO0jJoHcy9tAhPnT
         h9l6zxgaEJLMIyFdZ0YD3tHtJRt2pv/PoIyd4ASNpCEGOwDZHzFKhapwJtywucSn6A1u
         jdaIHZpoi2HhZzqLHP6n5v14PGV4Om/UKTpo0c7/Q0i1PtBNJINZO6aQMzFFV3ZpOf3I
         hb2Du8mJeFyKkDwSmckN85sLIh6mwHFYj1N6J/Rn3sHe5zy0zMK6FxrBBdg9B9gko67V
         0L+HLk1QgCk2W+6oX0YvlJCt2KnZ51K3IalntLE9+q827VUSdbsVRHp0vfDEPekVHsEj
         JuNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=LV+YeSNCdStMOfOQN7ceZijyMi7hzUft4ZtEXjhGCPk=;
        b=V6ybYLvIo4t6E3M6ht5kyPuXW4R6I1Y8tnpyHZ9KyCjA/DyPVtWQ0te/u4e3Y/DKAA
         9yVk0AnBNkoUNLmWSs5jOqO0zR0mrd4hYv/gDZ5gk14xLOuQez5LsEt3R1cSbH5rERpR
         hFC57LWt/A22Kn6115lpAYtPxZ5Il/m2SYwFx/hif1m4D90c6w3rWpQxMX9Fdj6uxTsZ
         MnsnFITquhbMkKkmxvver37hfhtmTZGduJiHUSLTtGWPgN7H+TC02c/HKS31e3aVR7zc
         A0hRAaadSKA8ykSb5s8FoZtLtpjHTIyrfUzOeaMhNAyxehQeAWidUGn9CvLFYIwq9/dw
         XSUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rltn/ixZ";
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id o56si1008551qtf.0.2019.08.05.11.05.07
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Aug 2019 11:05:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id r6so77602618qtt.0
        for <open-iscsi@googlegroups.com>; Mon, 05 Aug 2019 11:05:07 -0700 (PDT)
X-Received: by 2002:aed:2d67:: with SMTP id h94mr54499287qtd.154.1565028307522;
        Mon, 05 Aug 2019 11:05:07 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::39f3])
        by smtp.gmail.com with ESMTPSA id w19sm32732793qkj.66.2019.08.05.11.05.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Aug 2019 11:05:06 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Mon, 5 Aug 2019 11:05:04 -0700
From: Tejun Heo <tj@kernel.org>
To: yebiaoxiang <yebiaoxiang@huawei.com>
Cc: lduncan@suse.com, jiangshanlai@gmail.com, cleech@redhat.com,
	open-iscsi@googlegroups.com, jiangyiwen@huawei.com,
	xiexiangyou@huawei.com
Subject: Re: [RFC PATCH 1/2] workqueue: implement NUMA affinity for single
 thread workqueue
Message-ID: <20190805180504.GH136335@devbig004.ftw2.facebook.com>
References: <1563991180-11532-1-git-send-email-yebiaoxiang@huawei.com>
 <1563991180-11532-2-git-send-email-yebiaoxiang@huawei.com>
 <20190729192945.GE569612@devbig004.ftw2.facebook.com>
 <5D3FFCFA.2030001@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5D3FFCFA.2030001@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Original-Sender: tj@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="rltn/ixZ";       spf=pass
 (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::842 as
 permitted sender) smtp.mailfrom=htejun@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hello,

On Tue, Jul 30, 2019 at 04:16:58PM +0800, yebiaoxiang wrote:
> For single work, the order can guaranteed already, single work will only
> queued on single pwq at a time. The challenge is how to guarantee the order
> between different works, they may queued on different pwqs, and executed
> by each worker without synchronizing.
> 
> One of immature scheme is add two members enqueue_num and process_num to WQ,
> when a task enqueue in function __queue_work, save the enqueue_num to task,
> and then increase enqueue_num. When process_one_work check the enqueue_num of
> work whether equal with current_num or not. Keep waitting if false, if true
> then execute the work and increase current_num after done.
> like below:

So, I'd much preper if this is something which is implemented in front
of the core logic.  e.g. build a separate pre-queue to order the work
items.

> This immature scheme seems still too ugly, I tested it and got a smack in the eye.
> So is there any good idea to making ordered workqueues numa-aware faultlessly?
> BTW, I have no idea if is necessary to guarantee the order between different works.

That said, if strict ordering isn't an requirement, just using
unordered workqueue where each work item is grabbing mutex would be
enough, right?

Thanks.

-- 
tejun

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20190805180504.GH136335%40devbig004.ftw2.facebook.com.
