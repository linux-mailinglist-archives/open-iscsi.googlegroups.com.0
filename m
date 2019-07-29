Return-Path: <open-iscsi+bncBDQ2FCEAWYLRBLES7XUQKGQEVMDYANY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 9799F7943D
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Jul 2019 21:29:49 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id a5sf33743325pla.3
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Jul 2019 12:29:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564428588; cv=pass;
        d=google.com; s=arc-20160816;
        b=JsBKaexvRMH0oR3mAWBTGbxqmgR8fK7TuiD3xT/puFX7DUhTr7kWy8B1OkpN60SbSV
         12T4t6lXm4kVwIHG0oNMVNc0ViZd0/r8EQR5Gk3j6CM8H+QFzYVj3WJ9EIv7oeUDLICf
         GmFIpcM/0+jI2XTHY23XwaHXo4bAEJFlJBtC5mzrp6OJdY3XHEtEuv6moAKhwBv6oOvu
         goY2M3Uj7+FIUEVuzsC1nmD7jVaJX0JAHB/1bPo+zoyyT7qqq6gIWYhyunb1xKWIUwEP
         x/Rxpe+AmMa1nYF7D7o4tXiCd/D3n/pU1nSHE+WXAvxoNoEjyl4RWTSHCMYuymWbaHU1
         h86A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=i0fPKHqiQoRJZ5/oV1bTPkyIhTLr77sTjW1PrefqzDQ=;
        b=hKgfqvK7UvKeCMNQHz0KExrQ4IhBfnUHZdA5m6KqiW6qtZ9yl8d9TLue+tLUpEVmrn
         FMqVXclOp3I1l59QoU9Mo7dpHiZLHKPOHhGJyxW4ntLa67vRq3c5HQwAz9baxHIVb5LW
         zgqBHDZTh+4zqdF7ZItERV1jg0sTU1g4IqHJ2wEtRmm+v6yRPkuKp54eWV5SWBtZWkA+
         523Kd7r4IV6ru5m4z8VoyVq4+it4K/SphVxKnDVg7MGXdtFtd7Ib/+6Bs5lcg3oA1kYo
         D6wKyDjchjP8VS9sQKjf5wmCp86me8ImFqPV8C4HHhW90wqwmJaMoiVrFC1k0cPTXDgx
         J+FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z30Zvpox;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=i0fPKHqiQoRJZ5/oV1bTPkyIhTLr77sTjW1PrefqzDQ=;
        b=XVTdfeV32xLR6WlJPJOKQ4c3+dG4FpSVghx4ugjC2MqW6wSXEouc3osuQtsJwK4zP8
         1oiggLS1CH3N8qlo0jIRQjjRPIX0WgUlSP+NcH2w0kc29YKWoYyED6iMLBKWGF7JGX3b
         hMSGTmRgDFzvsKo5fVTDmmRNe6C4fdw3LowLCst7P47WAh1i/Fti5Tvk7p+Kipdnbkxt
         sBNmEQjJUfptCUv6e1CuliTz6Tx45SwdbfWTMRfkII7fPNPQa970usvHMWy0cnRp9ToF
         GteS64CL5+iGJ8znVXq9JSUUojsuuphCN6f0pLxAhlfGPw2JkidpKAcorsjN4L+gGLun
         3w7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i0fPKHqiQoRJZ5/oV1bTPkyIhTLr77sTjW1PrefqzDQ=;
        b=S1dNNAh0nRkH5AZ+BEn12L3oyMI6i9K68wLVtMFbNg/6fFIaOP/q0VKx52kd5CJGWU
         3Hd7y57n3tAKb09rfx+lz5cTE2a+8WS6rirgePs64JZICltt7WCS97tO841LQ1lDdgbI
         ozhSFOHE5RlPUF5xZ/Rv6zEBL8vMEr2NowN8zcLMRR0k1tzAomc7myoA51aGQnPls4aN
         UWUVD5BnVkJuNZbxYRZskhDjUTF+su+LOzeTeDCnApNmJngkRy8pO+xEc2utQn2p+jai
         vRBIIAk6ZfQLWLzoKk0ug432EDFOXOPR0m1hf0m1b7b8HhHYUI8k4LvvCLn1PNTB9UFY
         M9Ew==
X-Gm-Message-State: APjAAAW4Ituu8f97OTPoCZDy/yhflD4wrSJrY110kTXkaA7VyYVlHt2Y
	gAhCbVLVGBc4ahTFxaO/bug=
X-Google-Smtp-Source: APXvYqxOuGxJB08G77584rK8x1pHhqX+163098iJV6Xy1cLaEciv69MS+BASlfPJDduqwn95IvtsIw==
X-Received: by 2002:a17:90a:a410:: with SMTP id y16mr114438605pjp.62.1564428588404;
        Mon, 29 Jul 2019 12:29:48 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a62:52d2:: with SMTP id g201ls12865862pfb.9.gmail; Mon, 29
 Jul 2019 12:29:48 -0700 (PDT)
X-Received: by 2002:aa7:8a99:: with SMTP id a25mr38456673pfc.127.1564428588039;
        Mon, 29 Jul 2019 12:29:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564428588; cv=none;
        d=google.com; s=arc-20160816;
        b=Cu1JAi7BZnD44bILHoiFvAIySKkrqWMvuyxbkBg3OxSik7mr/PLVFoAmVy6b7NVKrL
         fHTfafjpWDtEsuB3PVXdOvp3kbYDR2KmsmZCKPWHx2rcw4pX5its3Nl+nJin84LqQO6d
         QfREd+GDBc5jBS5RqBhjjY0kikvMWGTnn4j8YT2/c89yOvdxbqsN83sFhiH3iyfKLHEu
         kHmOpM0BU09jPyNUDGNPRwmupDf/zX/LTMqiKe/mf9x+WHpVsFVg1s0qORl4XBZxyk7B
         d8MinKquMZTkFZtAXtP3dQyqhMIx2dZqJ7YZPVk2bPbd09/HxpuQ5stqdfwg/3Ggehfy
         5bRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Yi56AIDxn6UImSoMY/Le7abjGwllulsxYXXJnIk8Vrc=;
        b=fK5rNVgkgPd3fqbX2HS3l0Hr+ZCVgKHYY9OuE+pf1SBpNk+dYkC6+ULo4nk0m/vHUc
         nrFLCXFKNT7u0R/18SL0j33s+2/vcU59hrq1Gn3zmVCNUOYs55nG4f2JgArffphTfsMt
         ZI/rqZKZR3ahegyUI3nSQlXCQjBlq40N7x1/QtJyFWrsPSxp6jd/qnKQajDSJNcAG/q5
         a8cKpyqLToUedBRyRX4ieDYfWWNHmHzyu5tJdwB0CF9rPU2HaMTfQJUwhtbRQ/Kc83kH
         IE42xmph3UFzuj5oJwwO5ZW9WWi4Aqg1SZ+yDhsTQ7KAFo3sosB+r93Ue8UYrUF5M0QU
         YWYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z30Zvpox;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id b12si1489997pfd.4.2019.07.29.12.29.48
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 12:29:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t14so27860739plr.11
        for <open-iscsi@googlegroups.com>; Mon, 29 Jul 2019 12:29:48 -0700 (PDT)
X-Received: by 2002:a17:902:f213:: with SMTP id gn19mr114783709plb.35.1564428587491;
        Mon, 29 Jul 2019 12:29:47 -0700 (PDT)
Received: from localhost ([2620:10d:c091:500::1:309b])
        by smtp.gmail.com with ESMTPSA id j5sm54278281pgp.59.2019.07.29.12.29.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 12:29:46 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Mon, 29 Jul 2019 12:29:45 -0700
From: Tejun Heo <tj@kernel.org>
To: Biaoxiang Ye <yebiaoxiang@huawei.com>
Cc: lduncan@suse.com, jiangshanlai@gmail.com, cleech@redhat.com,
	open-iscsi@googlegroups.com, jiangyiwen@huawei.com,
	xiexiangyou@huawei.com
Subject: Re: [RFC PATCH 1/2] workqueue: implement NUMA affinity for single
 thread workqueue
Message-ID: <20190729192945.GE569612@devbig004.ftw2.facebook.com>
References: <1563991180-11532-1-git-send-email-yebiaoxiang@huawei.com>
 <1563991180-11532-2-git-send-email-yebiaoxiang@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1563991180-11532-2-git-send-email-yebiaoxiang@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Original-Sender: tj@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z30Zvpox;       spf=pass
 (google.com: domain of htejun@gmail.com designates 2607:f8b0:4864:20::644 as
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

On Wed, Jul 24, 2019 at 05:59:39PM +0000, Biaoxiang Ye wrote:
> @@ -1441,7 +1444,27 @@ static void __queue_work(int cpu, struct workqueue_struct *wq,
>  		if (worker && worker->current_pwq->wq == wq) {
>  			pwq = worker->current_pwq;
>  		} else {
> -			/* meh... not running there, queue here */
> +			/*
> +			 * meh... not running there, queue here
> +			 * we can't break the ordering guarantee of dynamic single thread wq,
> +			 * so have to check whethere the work are still pending in last pool or not.
> +			 */
> +			if (wq->flags & __WQ_DYNAMIC) {
> +				list_for_each_entry(work_tmp, &last_pool->worklist, entry) {
> +					if (work_tmp == work) {
> +						pending = true;
> +						break;
> +					}
> +				}
> +				if (pending) {
> +					last_pwq = get_work_pwq(work);
> +					if (likely(last_pwq))
> +						pwq = last_pwq;
> +					else    /* queue here */
> +						pr_warn("workqueue: work pending in last pool, "
> +								"but can't get pwq.\n");
> +				}
> +			}

So, I'm not against the idea of making ordered workqueues numa-aware
but this implementation is a bit too ugly.  Maybe the cleanest way to
implement this is by synchronizing and ordering the pwqs?

Thanks.

-- 
tejun

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20190729192945.GE569612%40devbig004.ftw2.facebook.com.
