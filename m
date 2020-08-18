Return-Path: <open-iscsi+bncBDUNBGN3R4KRBTHB6D4QKGQEHSPLATI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 6406D248F08
	for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 21:49:32 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id c3sf8261070edm.7
        for <lists+open-iscsi@lfdr.de>; Tue, 18 Aug 2020 12:49:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597780172; cv=pass;
        d=google.com; s=arc-20160816;
        b=NWwJP2bV5N5Fh87ATN8I/CWJl9cLMIjfx6iTClgfpfnJd3ioQm5St0fGxOmBY83XFU
         UXQaGrObk25IE0Vd6rMYbf33jsCUcfaDaCYXIllKFkjLytCioTPZNyfPju1hqO4PwHZD
         0rC7A9xS7NwK6NP9hbt81hcjDLJFeZhE3IJJatPRHXN8CO/ABS6/3qpWlIzCQEZMxxE0
         9IZh2xoleMiYUpnfNODT43glIQhyhZX9kxu7btxRJvbRUSzIusqWpkz322gJwZ98ZQiw
         EC3cchUdt0mC85v2bHtAzjyrPqHQZXUnhToFxeP2bEVBtH09Z5GPaI+mCxNMtuVc+ifz
         nTTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=IPuTz9jVoRtJIJmrBlaqnhsz2JqLu48tXCE/qDlWwX8=;
        b=QdL55g16+3tMabUGsHyQ5ID6yawR9DYiwKhTI7Iq1U6X+KcWsQUe5FHywwMJap+9/t
         ao2tZr7MRAnrH4DAwS5IIMB/tudeIc3aDoHiUNlh81vcO1ZXcJm818nHShJrjeHQdDnL
         lijF0+y7xUpWu4smBulb/tOsPDN9LYl26FZ9dwBgE3WgkFNDoJLjgJfT6tiREAE9wbi3
         6AOlBVtt1fLf/YuZq1LC29X/qAn2yURvwH1yZYkvuM9MWOJ3yKTBNHei0uiOFWWdCLdt
         z4aU2+xB9ktZ8YtZ1ML0nxuVYYy5OqVPDW0E7yoxtuAFT5x7fls80wJ97p/C4Rb8CpOd
         iqyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IPuTz9jVoRtJIJmrBlaqnhsz2JqLu48tXCE/qDlWwX8=;
        b=nnIDNtCpauNq3EwOxA3omeNV5XBom8c4FyMlvT3tK6BQTrhc0qyQ43T+hQg4wkIcUc
         5DmIo3L4DvP242xxzzQTyE08XfASI4e8z9Rtc1tsY1jsVhQS18YcURaXW6Qtbb9w0ztn
         5ozhtjCNyea6RCSruccxcZYQJo1EvNVfT1BPf57NSJBs+XFW4WnQLItNfkuxI8bYu1T2
         0zsfDjdu8yPxGsvigPocOF2A8ylIiqgxxxNeLMMBCNVMHlY7fZxEro0zjIsYgnTMVBlt
         0w1o0zZ7DQ/q3zowTAjkecTrleB+1rIa2krVPXd7r/PBE0B9ZZy489UXrwgvdVifyDHt
         xKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IPuTz9jVoRtJIJmrBlaqnhsz2JqLu48tXCE/qDlWwX8=;
        b=VTL0466h8kq/Al6GjPDWlSaZFamlptNiiteunUCirAHwY9IrLBS5BlJ9nueENKXpSo
         5GY+RMAI4CdhDTp3wrk+BjtNhE6bTrRF+Rgk+9Bf0hNQHT4oGm+9hxfha0o3h4ytg1Bs
         KplvaSAeZARwY5x34L187OkkoKYq4hA05SF4+jqG3lk3ij4nVaNncF6jAlUzClrStx1M
         pIN+Atid17vMndjxBnN/8adUiOjmf2m6JZ8TVQbRpGLmmlRxpwSbEzqNEKFJ76BAE+gi
         p6uJKLIBen7ePylu3HmqqwValKtfLDgSVedIHwsa6vBca+2h5eY21DjSf1xVfu4RGUrm
         +Jig==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533kio85hMbJ84f1X6ni9HoKd+z+jWWdkGUjnmLFVJpjGYGZy3uv
	+C9O0x65O5jYbRX8+bkhWvU=
X-Google-Smtp-Source: ABdhPJygDgo2Mh9M1V+P5wLBMgCIguGc0dpgxt+Dr/MFHbakXSjtgzY+0Tjs5weID+6kzBGitQQO+A==
X-Received: by 2002:a50:b701:: with SMTP id g1mr22384032ede.197.1597780172174;
        Tue, 18 Aug 2020 12:49:32 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:1a56:: with SMTP id j22ls10372543ejf.3.gmail; Tue,
 18 Aug 2020 12:49:31 -0700 (PDT)
X-Received: by 2002:a17:906:c7d2:: with SMTP id dc18mr921363ejb.135.1597780171613;
        Tue, 18 Aug 2020 12:49:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597780171; cv=none;
        d=google.com; s=arc-20160816;
        b=Vg3Y7n5sXTuh0SBbAlacqes4uAqd8Sfo3XO0ywKnK/lpvv1WGywV+fTHZMWfOrIABl
         5higfufEO/ShJR9H0YzHsOi4D9dXOhykpShT6/S1Fll0p0BdyVpzeV/3KFVyIoDvs7kQ
         1TF04085k2bD+hMBxHDfjOQUiPMqlKnslO2ju2F16cjh851qZvo0i+ZkrzRG1lw99g0D
         JSSOPnzczjTutDSgICjlweygzCGbmmtiXPzlrWtppqkp2X/FgpZgjmedhXdwRaWrkiAt
         EZU7c2Ys/0/owRvEdTx9JFkbuczCGTsGku6zZ59jDsRhx5MLbpiqfYWDFVLS2TjOmxT+
         85Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=8TAQPrbuU0UfyQIuachOa61bzosk9z6o6Pvu2fhMhh0=;
        b=FBYNvvVcyMVlw2dbMuTQM5nGfKOoYmEZduDhyh+JvHOeqAG2wBROkxNKIj07n1LkwV
         5c4OY/zdaPXYsvucQSag+k+z6H4LyPtZoMzh9NS/bmYbHJ/LX55A5bDD4RsgWAwwBS9S
         8yGQf5RhMzI0oX2Px2r1W/UWeedgDzvObjn/IGxMo+bpm4o1j6j3txUmuDVemMP03snq
         RW9LgXPFm6sjqLSvkR2EWQG0csMJxFYR7PP8CDMo/phVAdm5C79FkEwXwcjWM4c8dGjw
         rWou0/Sc/khuZDD7G6Zm0CUejgmxtPFtwxjHKPAMT4egJPdsQoum6HCaIE84yKCJ+crW
         pjGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id b6si861382edq.1.2020.08.18.12.49.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 12:49:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 79BEA68AFE; Tue, 18 Aug 2020 21:49:30 +0200 (CEST)
Date: Tue, 18 Aug 2020 21:49:30 +0200
From: Christoph Hellwig <hch@lst.de>
To: Coly Li <colyli@suse.de>
Cc: Christoph Hellwig <hch@lst.de>, linux-block@vger.kernel.org,
	linux-nvme@lists.infradead.org, netdev@vger.kernel.org,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org,
	ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
	Hannes Reinecke <hare@suse.de>, Jan Kara <jack@suse.com>,
	Jens Axboe <axboe@kernel.dk>,
	Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
	Philipp Reisner <philipp.reisner@linbit.com>,
	Sagi Grimberg <sagi@grimberg.me>, Vlastimil Babka <vbabka@suse.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH v7 1/6] net: introduce helper sendpage_ok() in
 include/linux/net.h
Message-ID: <20200818194930.GA31966@lst.de>
References: <20200818131227.37020-1-colyli@suse.de> <20200818131227.37020-2-colyli@suse.de> <20200818162404.GA27196@lst.de> <217ec0ec-3c5a-a8ed-27d9-c634f0b9a045@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <217ec0ec-3c5a-a8ed-27d9-c634f0b9a045@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Wed, Aug 19, 2020 at 12:33:37AM +0800, Coly Li wrote:
> On 2020/8/19 00:24, Christoph Hellwig wrote:
> > I think we should go for something simple like this instead:
> 
> This idea is fine to me. Should a warning message be through here? IMHO
> the driver still sends an improper page in, fix it in silence is too
> kind or over nice to the buggy driver(s).

I don't think a warning is a good idea.  An API that does the right
thing underneath and doesn't require boiler plate code in most callers
is the right API.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200818194930.GA31966%40lst.de.
