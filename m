Return-Path: <open-iscsi+bncBC65ZG75XIPRBAWG7OUAMGQEGUHZMQA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADA07BA605
	for <lists+open-iscsi@lfdr.de>; Thu,  5 Oct 2023 18:23:33 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id 006d021491bc7-57b8079db51sf1388314eaf.3
        for <lists+open-iscsi@lfdr.de>; Thu, 05 Oct 2023 09:23:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696523012; cv=pass;
        d=google.com; s=arc-20160816;
        b=DVk+nqoYaYrpIUqBlpdMFK/6A/alnUd8z46hfw4rHHYaLE3GAyJ+0o09B+d3amKvBk
         buleeJY44EJs2DG6tC1KOXgQaqrkg4Cn6fepJz1E8r9GiSzatEnotpcHkDgep8fPUrk8
         MHVktp8Y9gH6C8yuliTkI6V8dBtKraM82PHxuL8OzGB6WLKOIBBdl1V64zFpbejRdmAd
         IovKSVBmY+pZjH4KlH0fatUV2Xs76awRtUkITLEfsZhkxN9fwJIopZ6LNfAmDxWTA3j4
         upax1ncnTqdYegFmzadS6zlvYODLTgwUozjVgJJa3sLVHgEVmyK3yMvnfUJdKl655C1g
         pNfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=lL+PEp9/+xVE264jVBmmxc5z3DtfQqg1FyuFbruBLok=;
        fh=mPIJ+F7bOB2EDmhi/bVyK6SNad7DJZf7FV54MclQzZk=;
        b=vKYDjd10vyQFevl8gnC37wvg70Cz9YgG4tArBBjfeccoc+EIDT8aPENhUaV2J2+BNm
         qe5YBfY3TgZyhTIv7UwanVuKMtwIQ0x5rYdaItjtjDvAHdL7il1bGChRArXhHJkC9rbb
         or5OtTewSsvZaALZrn3JthkNY07KqH4s32/osN3Ac5cOc7p8kxg1tFF62HoejLBtoN4x
         SoJ+PXzP9L7M04cDWML7xzi9eu/S7v+QWihMjZdy1jI4VAC6zSAFUr8sbjHAluzhsEGK
         mrBBvVUVp73LinFekdvfsU4JljdWe3bRJHmpoVpMDxMKqNJr1+3+/LuUdzC7C7MYpEix
         c00w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=gZbAc81a;
       spf=pass (google.com: domain of dan.carpenter@linaro.org designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1696523012; x=1697127812; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=lL+PEp9/+xVE264jVBmmxc5z3DtfQqg1FyuFbruBLok=;
        b=dwsDtUl9OYuzizb5nWl3xA5uS3kbNRSXUlw/utmq+WkEAtr7WfTQeFX45nQxuU0I6p
         6nRLcxLkL93aGES4t2uu29pY4WQuSnwlD+TYc6cIS6Q/qTpmvIYVJRQcRCT+mdpYIcC+
         JVAP5KEqq+6mMKlbHBW4a1L5quTuKRGf1bJOBrMN75lFuymiomGVXZQkglVYHQRZP3vU
         H2MQ485FDSRqR5E9EFB6vsseXniiWQGuXfmEA+I1mZ2Dt4b2NL2l66KeTe09riknV6Om
         aOUErohOQOSgRzZjNw7UsKaI2N0Uyha47p4p+/OM1gd5sBB3ISZkHOyc7WfHIVa165TY
         7qJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696523012; x=1697127812;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lL+PEp9/+xVE264jVBmmxc5z3DtfQqg1FyuFbruBLok=;
        b=nObU24vGRm90UG6H1Hp0cUeCjcWkXqfmX14ZMc7q6HaWZ2W3bI3+V9tHhG8ayBLIxg
         zAxhXbHdqgP/lpcKYChpzk8HHfMERlFGoge+7Q+VcflcM3ADPrt5X0tuch+sN5cbqyP+
         PbSsYi5UXWoQe1U2NAguZWBCT+ZxHY0k6r3vUJm3NQWd5wxSMXtRHqdmntS3BN9s2h6u
         5ZHTDyOThvg0KzD1vpvWdaacGPlorL8p2jLEfHcTerj6AtOhrz/JiJhACDONgV2RXAzC
         ZmFwzEL2xsD3zgNSQQCelnerewKdItOuKvMd4n1/wyIPrtbWodwDZOrp2PhH8e5jtxDZ
         hk1Q==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0YyZG5YapAsJIcU/xR0NM/eYUvEhlN/JsJymaizY6Ng7/RjzRCCU
	jd2rWVWR/Uu9masZLS9Mp7g=
X-Google-Smtp-Source: AGHT+IHMabGx1be5P+XxNbGJxNFyK5eMK2dJxxzvAJPywMDt6n2JXrX8CRNOvfo0Ryj9IjuvmEfvsg==
X-Received: by 2002:a4a:e5d2:0:b0:57d:e5e7:6d00 with SMTP id r18-20020a4ae5d2000000b0057de5e76d00mr4578034oov.6.1696523011734;
        Thu, 05 Oct 2023 09:23:31 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a4a:52d1:0:b0:576:22ef:e4ab with SMTP id d200-20020a4a52d1000000b0057622efe4abls1631632oob.2.-pod-prod-04-us;
 Thu, 05 Oct 2023 09:23:30 -0700 (PDT)
X-Received: by 2002:a05:6808:1815:b0:3ae:c95:ad2c with SMTP id bh21-20020a056808181500b003ae0c95ad2cmr3086603oib.0.1696523010283;
        Thu, 05 Oct 2023 09:23:30 -0700 (PDT)
Received: by 2002:a05:620a:1a98:b0:773:bc0c:3d88 with SMTP id af79cd13be357-775d9fc61b1ms85a;
        Thu, 5 Oct 2023 03:40:11 -0700 (PDT)
X-Received: by 2002:a05:6512:3282:b0:501:b8dc:6c45 with SMTP id p2-20020a056512328200b00501b8dc6c45mr3727833lfe.18.1696502409467;
        Thu, 05 Oct 2023 03:40:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696502409; cv=none;
        d=google.com; s=arc-20160816;
        b=iORj+MEpDoqd1u+MDvg1AzNhwh4Fe5hVvDNULPqKbQFz/O/zWGw3CPbtUR9YSJ/zfe
         evdb/5a7NRMBxt5N32XrUNXeFbnMLHTxaGwJxNCmFznMzGn43MNPrWITcxBzrloptY1Z
         ZZPLF/LvzZ4hNX8o4LZlbgTuhKKxi6b/FJ5dMuLfmGrYuf5GAbb/iLKe/UvyeE3Twtzv
         p1hnQ8FCJFZddIEnCucJBZZ5YWPTvokP7X1HIUtYQURpPmBcaluByhwFtSAtlfjSAtah
         Pxs4hgznCHWIv5LQRbXcJ/HIcq65Tj2KwWJo4ouEuWKpOcrDBaGP+vyJv2zfHlVXTBl3
         xwGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=hcpe8rpxiNY6s6GgKaLTLVHfVFyP836KXSYgAp7SqpE=;
        fh=mPIJ+F7bOB2EDmhi/bVyK6SNad7DJZf7FV54MclQzZk=;
        b=eVA5omKMtfpW7GcJUstXAHCiXeOL5oPh7px2eellZXnfbyg+IYLdtUG7NVje/2wseg
         aslNMYxLvafSIydXXm8bqEJWjjWNiLXQ8VHxj4/378jdQBPIJzynI6xR3i8sHvsLhzNh
         ac0dyKVgtWf7DnGggjWt0ZfekBcBgI1QLpLBKXm1ZeFwcUhGcqJga6a4vBUoHI5e7vzG
         sf3ulLEYwXFCyRgi8Xtj2C2ZKNE8zpc9ssbv7CdTIIrXwKZrErtSkckdWggh8AvNf1On
         YYcnNZl+jSaVQl7XoFtojTimfLUDjN2jFGtVccegfAdrNZ4Q61jLC/mcNWfTM1VDFzlT
         C7vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=gZbAc81a;
       spf=pass (google.com: domain of dan.carpenter@linaro.org designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com. [2a00:1450:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id n16-20020a05651203f000b00503ce43f46asi72114lfq.11.2023.10.05.03.40.09
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Oct 2023 03:40:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@linaro.org designates 2a00:1450:4864:20::32c as permitted sender) client-ip=2a00:1450:4864:20::32c;
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40535597f01so6902435e9.3
        for <open-iscsi@googlegroups.com>; Thu, 05 Oct 2023 03:40:09 -0700 (PDT)
X-Received: by 2002:a1c:7914:0:b0:405:37bb:d942 with SMTP id l20-20020a1c7914000000b0040537bbd942mr4906124wme.4.1696502408717;
        Thu, 05 Oct 2023 03:40:08 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id y6-20020a1c4b06000000b00405588aa40asm1209179wma.24.2023.10.05.03.40.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 03:40:07 -0700 (PDT)
Date: Thu, 5 Oct 2023 13:40:05 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Wenchao Hao <haowenchao2@huawei.com>,
	"James E . J . Bottomley" <jejb@linux.ibm.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Douglas Gilbert <dgilbert@interlog.com>,
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	linux-kernel@vger.kernel.org, louhongxiang@huawei.com,
	Wenchao Hao <haowenchao2@huawei.com>
Subject: Re: [PATCH v5 06/10] scsi: scsi_debug: set command's result and
 sense data if the error is injected
Message-ID: <752bff1e-91a7-414f-a4d2-cb88fd556ead@kadam.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230922092906.2645265-7-haowenchao2@huawei.com>
X-Original-Sender: dan.carpenter@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=gZbAc81a;       spf=pass
 (google.com: domain of dan.carpenter@linaro.org designates
 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Hi Wenchao,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Wenchao-Hao/scsi-scsi_debug-create-scsi_debug-directory-in-the-debugfs-filesystem/20230922-173226
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
patch link:    https://lore.kernel.org/r/20230922092906.2645265-7-haowenchao2%40huawei.com
patch subject: [PATCH v5 06/10] scsi: scsi_debug: set command's result and sense data if the error is injected
config: x86_64-randconfig-161-20231003 (https://download.01.org/0day-ci/archive/20231005/202310050209.VOl6gV40-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0
reproduce: (https://download.01.org/0day-ci/archive/20231005/202310050209.VOl6gV40-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202310050209.VOl6gV40-lkp@intel.com/

smatch warnings:
drivers/scsi/scsi_debug.c:7912 scsi_debug_queuecommand() warn: missing error code? 'ret'

vim +/ret +7912 drivers/scsi/scsi_debug.c

fd32119b0deac1 Douglas Gilbert 2016-04-25  7832  static int scsi_debug_queuecommand(struct Scsi_Host *shost,
fd32119b0deac1 Douglas Gilbert 2016-04-25  7833  				   struct scsi_cmnd *scp)
c2248fc974df7b Douglas Gilbert 2014-11-24  7834  {
c2248fc974df7b Douglas Gilbert 2014-11-24  7835  	u8 sdeb_i;
c2248fc974df7b Douglas Gilbert 2014-11-24  7836  	struct scsi_device *sdp = scp->device;
c2248fc974df7b Douglas Gilbert 2014-11-24  7837  	const struct opcode_info_t *oip;
c2248fc974df7b Douglas Gilbert 2014-11-24  7838  	const struct opcode_info_t *r_oip;
c2248fc974df7b Douglas Gilbert 2014-11-24  7839  	struct sdebug_dev_info *devip;
c2248fc974df7b Douglas Gilbert 2014-11-24  7840  	u8 *cmd = scp->cmnd;
c2248fc974df7b Douglas Gilbert 2014-11-24  7841  	int (*r_pfp)(struct scsi_cmnd *, struct sdebug_dev_info *);
f66b85171a0ebd Martin Wilck    2018-02-14  7842  	int (*pfp)(struct scsi_cmnd *, struct sdebug_dev_info *) = NULL;
c2248fc974df7b Douglas Gilbert 2014-11-24  7843  	int k, na;
c2248fc974df7b Douglas Gilbert 2014-11-24  7844  	int errsts = 0;
ad0c7775e745d2 Douglas Gilbert 2020-08-21  7845  	u64 lun_index = sdp->lun & 0x3FFF;
c2248fc974df7b Douglas Gilbert 2014-11-24  7846  	u32 flags;
c2248fc974df7b Douglas Gilbert 2014-11-24  7847  	u16 sa;
c2248fc974df7b Douglas Gilbert 2014-11-24  7848  	u8 opcode = cmd[0];
c2248fc974df7b Douglas Gilbert 2014-11-24  7849  	bool has_wlun_rl;
3a90a63d02b8b7 Douglas Gilbert 2020-07-12  7850  	bool inject_now;
929aad8ff0578d Wenchao Hao     2023-09-22  7851  	int ret = 0;
cc36ffafc0f7e6 Wenchao Hao     2023-09-22  7852  	struct sdebug_err_inject err;
c2248fc974df7b Douglas Gilbert 2014-11-24  7853  
c2248fc974df7b Douglas Gilbert 2014-11-24  7854  	scsi_set_resid(scp, 0);
3a90a63d02b8b7 Douglas Gilbert 2020-07-12  7855  	if (sdebug_statistics) {
c483739430f107 Douglas Gilbert 2016-05-06  7856  		atomic_inc(&sdebug_cmnd_count);
3a90a63d02b8b7 Douglas Gilbert 2020-07-12  7857  		inject_now = inject_on_this_cmd();
3a90a63d02b8b7 Douglas Gilbert 2020-07-12  7858  	} else {
3a90a63d02b8b7 Douglas Gilbert 2020-07-12  7859  		inject_now = false;
3a90a63d02b8b7 Douglas Gilbert 2020-07-12  7860  	}
f46eb0e9fc763b Douglas Gilbert 2016-04-25  7861  	if (unlikely(sdebug_verbose &&
f46eb0e9fc763b Douglas Gilbert 2016-04-25  7862  		     !(SDEBUG_OPT_NO_CDB_NOISE & sdebug_opts))) {
c2248fc974df7b Douglas Gilbert 2014-11-24  7863  		char b[120];
c2248fc974df7b Douglas Gilbert 2014-11-24  7864  		int n, len, sb;
c2248fc974df7b Douglas Gilbert 2014-11-24  7865  
c2248fc974df7b Douglas Gilbert 2014-11-24  7866  		len = scp->cmd_len;
c2248fc974df7b Douglas Gilbert 2014-11-24  7867  		sb = (int)sizeof(b);
c2248fc974df7b Douglas Gilbert 2014-11-24  7868  		if (len > 32)
c2248fc974df7b Douglas Gilbert 2014-11-24  7869  			strcpy(b, "too long, over 32 bytes");
c2248fc974df7b Douglas Gilbert 2014-11-24  7870  		else {
c2248fc974df7b Douglas Gilbert 2014-11-24  7871  			for (k = 0, n = 0; k < len && n < sb; ++k)
c2248fc974df7b Douglas Gilbert 2014-11-24  7872  				n += scnprintf(b + n, sb - n, "%02x ",
c2248fc974df7b Douglas Gilbert 2014-11-24  7873  					       (u32)cmd[k]);
c2248fc974df7b Douglas Gilbert 2014-11-24  7874  		}
458df78b1c513d Bart Van Assche 2018-01-26  7875  		sdev_printk(KERN_INFO, sdp, "%s: tag=%#x, cmd %s\n", my_name,
a6e76e6f2c0efd Bart Van Assche 2021-08-09  7876  			    blk_mq_unique_tag(scsi_cmd_to_rq(scp)), b);
c2248fc974df7b Douglas Gilbert 2014-11-24  7877  	}
3a90a63d02b8b7 Douglas Gilbert 2020-07-12  7878  	if (unlikely(inject_now && (sdebug_opts & SDEBUG_OPT_HOST_BUSY)))
7ee6d1b4357ac2 Bart Van Assche 2017-12-07  7879  		return SCSI_MLQUEUE_HOST_BUSY;
34d55434ba1f39 Tomas Winkler   2015-07-28  7880  	has_wlun_rl = (sdp->lun == SCSI_W_LUN_REPORT_LUNS);
ad0c7775e745d2 Douglas Gilbert 2020-08-21  7881  	if (unlikely(lun_index >= sdebug_max_luns && !has_wlun_rl))
f46eb0e9fc763b Douglas Gilbert 2016-04-25  7882  		goto err_out;
c2248fc974df7b Douglas Gilbert 2014-11-24  7883  
c2248fc974df7b Douglas Gilbert 2014-11-24  7884  	sdeb_i = opcode_ind_arr[opcode];	/* fully mapped */
c2248fc974df7b Douglas Gilbert 2014-11-24  7885  	oip = &opcode_info_arr[sdeb_i];		/* safe if table consistent */
c2248fc974df7b Douglas Gilbert 2014-11-24  7886  	devip = (struct sdebug_dev_info *)sdp->hostdata;
f46eb0e9fc763b Douglas Gilbert 2016-04-25  7887  	if (unlikely(!devip)) {
f46eb0e9fc763b Douglas Gilbert 2016-04-25  7888  		devip = find_build_dev_info(sdp);
c2248fc974df7b Douglas Gilbert 2014-11-24  7889  		if (NULL == devip)
f46eb0e9fc763b Douglas Gilbert 2016-04-25  7890  			goto err_out;
c2248fc974df7b Douglas Gilbert 2014-11-24  7891  	}
3f07ff40cb2457 Wenchao Hao     2023-09-22  7892  
3f07ff40cb2457 Wenchao Hao     2023-09-22  7893  	if (sdebug_timeout_cmd(scp)) {
3f07ff40cb2457 Wenchao Hao     2023-09-22  7894  		scmd_printk(KERN_INFO, scp, "timeout command 0x%x\n", opcode);
3f07ff40cb2457 Wenchao Hao     2023-09-22  7895  		return 0;
3f07ff40cb2457 Wenchao Hao     2023-09-22  7896  	}
3f07ff40cb2457 Wenchao Hao     2023-09-22  7897  
929aad8ff0578d Wenchao Hao     2023-09-22  7898  	ret = sdebug_fail_queue_cmd(scp);
929aad8ff0578d Wenchao Hao     2023-09-22  7899  	if (ret) {
929aad8ff0578d Wenchao Hao     2023-09-22  7900  		scmd_printk(KERN_INFO, scp, "fail queue command 0x%x with 0x%x\n",
929aad8ff0578d Wenchao Hao     2023-09-22  7901  				opcode, ret);
929aad8ff0578d Wenchao Hao     2023-09-22  7902  		return ret;
929aad8ff0578d Wenchao Hao     2023-09-22  7903  	}
929aad8ff0578d Wenchao Hao     2023-09-22  7904  
cc36ffafc0f7e6 Wenchao Hao     2023-09-22  7905  	if (sdebug_fail_cmd(scp, &ret, &err)) {
cc36ffafc0f7e6 Wenchao Hao     2023-09-22  7906  		scmd_printk(KERN_INFO, scp,
cc36ffafc0f7e6 Wenchao Hao     2023-09-22  7907  			"fail command 0x%x with hostbyte=0x%x, "
cc36ffafc0f7e6 Wenchao Hao     2023-09-22  7908  			"driverbyte=0x%x, statusbyte=0x%x, "
cc36ffafc0f7e6 Wenchao Hao     2023-09-22  7909  			"sense_key=0x%x, asc=0x%x, asq=0x%x\n",
cc36ffafc0f7e6 Wenchao Hao     2023-09-22  7910  			opcode, err.host_byte, err.driver_byte,
cc36ffafc0f7e6 Wenchao Hao     2023-09-22  7911  			err.status_byte, err.sense_key, err.asc, err.asq);
cc36ffafc0f7e6 Wenchao Hao     2023-09-22 @7912  		return ret;

This returns zero but it should be an error code.

cc36ffafc0f7e6 Wenchao Hao     2023-09-22  7913  	}
cc36ffafc0f7e6 Wenchao Hao     2023-09-22  7914  
3a90a63d02b8b7 Douglas Gilbert 2020-07-12  7915  	if (unlikely(inject_now && !atomic_read(&sdeb_inject_pending)))
3a90a63d02b8b7 Douglas Gilbert 2020-07-12  7916  		atomic_set(&sdeb_inject_pending, 1);
3a90a63d02b8b7 Douglas Gilbert 2020-07-12  7917  
c2248fc974df7b Douglas Gilbert 2014-11-24  7918  	na = oip->num_attached;
c2248fc974df7b Douglas Gilbert 2014-11-24  7919  	r_pfp = oip->pfp;
c2248fc974df7b Douglas Gilbert 2014-11-24  7920  	if (na) {	/* multiple commands with this opcode */
c2248fc974df7b Douglas Gilbert 2014-11-24  7921  		r_oip = oip;

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/752bff1e-91a7-414f-a4d2-cb88fd556ead%40kadam.mountain.
