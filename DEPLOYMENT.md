# Deployment Guide for Poorvesh Portfolio

This guide explains how to publish and deploy the Poorvesh Portfolio website using various methods.

## 🎯 Quick Start (Recommended: GitHub Pages)

The easiest way to publish this portfolio is using GitHub Pages with the automated workflow already set up in this repository.

### Step 1: Enable GitHub Pages

1. Go to your repository on GitHub: `https://github.com/codesbypvio/poorvesh-portfolio`
2. Click on **Settings** tab
3. Scroll down to **Pages** section in the left sidebar
4. Under **Source**, select **GitHub Actions**
5. The workflow will automatically deploy your site

### Step 2: Trigger Deployment

The deployment will automatically trigger when you:
- Push changes to the `main` or `master` branch
- Merge a pull request to the main branch

You can also manually trigger deployment:
1. Go to the **Actions** tab
2. Click "Deploy Portfolio to GitHub Pages"
3. Click "Run workflow"

### Step 3: Access Your Live Site

Once deployed, your site will be available at:
```
https://codesbypvio.github.io/poorvesh-portfolio/
```

## 🌐 Alternative Deployment Methods

### 1. Netlify (Free Hosting)

1. **Sign up** at [netlify.com](https://netlify.com)
2. **Drag and drop** the `resume-website` folder to Netlify dashboard
3. **Configure** custom domain (optional)

Or connect to GitHub:
1. Click "New site from Git"
2. Connect your GitHub repository
3. Set build directory to `resume-website`
4. Deploy!

### 2. Vercel (Free Hosting)

1. **Sign up** at [vercel.com](https://vercel.com)
2. **Import** your GitHub repository
3. **Configure** root directory to `resume-website`
4. **Deploy** with one click

### 3. Firebase Hosting

1. **Install** Firebase CLI: `npm install -g firebase-tools`
2. **Login**: `firebase login`
3. **Initialize**: `firebase init hosting`
   - Select `resume-website` as public directory
   - Configure as single-page app: No
   - Don't overwrite index.html
4. **Deploy**: `firebase deploy`

### 4. Custom VPS/Server

Upload the contents of `resume-website` folder to your web server:

```bash
# Example using rsync
rsync -avz resume-website/ user@yourserver.com:/var/www/html/
```

## 🔧 Configuration Options

### Custom Domain Setup

#### GitHub Pages
1. Go to repository **Settings** > **Pages**
2. Add your custom domain in the **Custom domain** field
3. Create a `CNAME` file in the repository root with your domain

#### DNS Configuration
Add these DNS records for your domain:
```
Type: CNAME
Name: www
Value: codesbypvio.github.io

Type: A
Name: @
Value: 185.199.108.153
Value: 185.199.109.153
Value: 185.199.110.153
Value: 185.199.111.153
```

### SSL Certificate

- **GitHub Pages**: Automatically provides SSL with Let's Encrypt
- **Netlify**: Automatic SSL certificate
- **Vercel**: Automatic SSL certificate

## 📊 Monitoring and Analytics

### Google Analytics
Add your Google Analytics code to `resume-website/index.html`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_TRACKING_ID');
</script>
```

### Performance Monitoring
- Use Google PageSpeed Insights
- Monitor Core Web Vitals
- Set up uptime monitoring with services like UptimeRobot

## 🚀 Optimization for Production

### Performance Optimizations
1. **Image Optimization**: Compress images before uploading
2. **Minification**: Minify CSS and JavaScript (optional for this simple site)
3. **CDN**: Use CDN for external resources (already configured)

### SEO Optimizations
1. **Meta Tags**: Already included in the HTML
2. **Sitemap**: Create `sitemap.xml` for better indexing
3. **Robots.txt**: Add robots.txt for search engine guidelines

## 🔄 Updating Your Site

### Method 1: Direct GitHub Edit
1. Go to your repository on GitHub
2. Navigate to `resume-website/index.html`
3. Click the edit (pencil) icon
4. Make your changes
5. Commit changes (will trigger auto-deployment)

### Method 2: Local Development
1. Clone the repository locally
2. Make changes to `resume-website/index.html`
3. Test locally using `./serve.sh`
4. Commit and push changes

### Method 3: GitHub Codespaces
1. Click "Code" > "Codespaces" > "Create codespace"
2. Edit files in the browser-based VS Code
3. Commit and push changes

## 🆘 Troubleshooting

### Common Issues

**Site not updating after changes:**
- Check Actions tab for deployment status
- Clear browser cache
- Wait 5-10 minutes for propagation

**404 Error:**
- Ensure GitHub Pages is enabled
- Check that workflow completed successfully
- Verify the correct branch is selected

**Styling issues:**
- Check browser console for blocked resources
- Ensure external CDNs are accessible
- Verify Tailwind CSS is loading properly

### Getting Help

If you encounter issues:
1. Check the [GitHub Actions](https://github.com/codesbypvio/poorvesh-portfolio/actions) tab for deployment logs
2. Review the [GitHub Pages documentation](https://docs.github.com/en/pages)
3. Open an issue in the repository

## 📞 Support

For additional help with deployment:
- **Email**: poorvesh.umak.ce@gmail.com
- **GitHub Issues**: Open an issue in this repository

---

**Happy Deploying! 🚀**